package org.reso.commander.jsonSerializers;

import com.google.gson.*;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.apache.olingo.commons.api.edm.*;
import org.reso.commander.common.Utils;

import java.lang.reflect.Type;
import java.util.Date;

import static org.reso.commander.Commander.REPORT_DIVIDER;
import static org.reso.commander.common.ErrorMsg.getDefaultErrorMessage;

public class MetadataReport implements JsonSerializer<MetadataReport> {
  private static final Logger LOG = LogManager.getLogger(MetadataReport.class);

  private Edm metadata;

  private MetadataReport() {
    //private default constructor
  }

  public MetadataReport(Edm metadata) {
    this.metadata = metadata;
  }

  @Override
  public String toString() {
    StringBuilder reportBuilder = new StringBuilder();

    reportBuilder
        .append("\n\n" + REPORT_DIVIDER)
        .append("\nRESO Metadata Report")
        .append("\n").append(new Date())
        .append("\n" + REPORT_DIVIDER);

    JsonElement metadataReport = serialize(this, MetadataReport.class, null);
    reportBuilder.append(FieldJson.buildReportString(metadataReport));
    reportBuilder.append(LookupJson.buildReportString(metadataReport));

    return reportBuilder.toString();
  }

  @Override
  public JsonElement serialize(MetadataReport src, Type typeOfSrc, JsonSerializationContext context) {
    final String
        DESCRIPTION_KEY = "description", DESCRIPTION = "RESO Data Dictionary Metadata Report",
        VERSION_KEY = "version", VERSION = "1.7",
        GENERATED_ON_KEY = "generatedOn",
        FIELDS_KEY = "fields",
        LOOKUPS_KEY = "lookups";

    JsonArray fields = new JsonArray();
    JsonArray lookups = new JsonArray();

    src.metadata.getSchemas().forEach(edmSchema -> {
      //serialize entities (resources) and members (fields)
      edmSchema.getEntityTypes().forEach(edmEntityType -> {
        edmEntityType.getPropertyNames().forEach(propertyName -> {
          FieldJson fieldJson = new FieldJson(edmEntityType.getName(), edmEntityType.getProperty(propertyName));
          fields.add(fieldJson.serialize(fieldJson, FieldJson.class, null));
        });
      });

      //serialize enum types
      edmSchema.getEnumTypes().forEach(edmEnumType -> {
        edmEnumType.getMemberNames().forEach(memberName -> {
          LookupJson lookupJson = new LookupJson(memberName, edmEnumType);
          lookups.add(lookupJson.serialize(lookupJson, LookupJson.class, null));
        });
      });
    });

    JsonObject metadataReport = new JsonObject();
    metadataReport.addProperty(DESCRIPTION_KEY, DESCRIPTION);
    metadataReport.addProperty(VERSION_KEY, VERSION);
    metadataReport.addProperty(GENERATED_ON_KEY, Utils.getIsoTimestamp());
    metadataReport.add(FIELDS_KEY, fields);
    metadataReport.add(LOOKUPS_KEY, lookups);
    return metadataReport;
  }
}
