.class public final Lcom/miui/warningcenter/disasterwarning/model/DisasterInfoKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDisasterInfo.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DisasterInfo.kt\ncom/miui/warningcenter/disasterwarning/model/DisasterInfoKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,285:1\n1#2:286\n*E\n"
    }
.end annotation


# direct methods
.method public static final toDisasterInfo(Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;)Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;
    .locals 21
    .param p0    # Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "<this>"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getDescription()Ljava/lang/String;

    move-result-object v3

    const-string v0, "description"

    invoke-static {v3, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEffective()Ljava/lang/String;

    move-result-object v4

    const-string v0, "effective"

    invoke-static {v4, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/model/EventType;->values()[Lcom/miui/warningcenter/disasterwarning/model/EventType;

    move-result-object v0

    array-length v2, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v2, :cond_1

    aget-object v6, v0, v5

    invoke-virtual {v6}, Lcom/miui/warningcenter/disasterwarning/model/EventType;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventType()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    :goto_1
    if-nez v6, :cond_2

    sget-object v0, Lcom/miui/warningcenter/disasterwarning/model/EventType;->Other:Lcom/miui/warningcenter/disasterwarning/model/EventType;

    move-object v5, v0

    goto :goto_2

    :cond_2
    move-object v5, v6

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getEventTypeCN()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    const-string v2, "eventTypeCN"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getExpires()Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    const-string v2, "expires"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getHeadline()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    const-string v2, "headline"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    const-string v2, "identifier"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getMsgType()Ljava/lang/String;

    move-result-object v0

    move-object v10, v0

    const-string v2, "msgType"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getNote()Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    const-string v2, "note"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getReferencesInfo()Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    const-string v2, "referencesInfo"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSender()Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    const-string v2, "sender"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getSeverity()Ljava/lang/String;

    move-result-object v0

    const-string v2, "severity"

    invoke-static {v0, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/miui/warningcenter/disasterwarning/model/Severity;->valueOf(Ljava/lang/String;)Lcom/miui/warningcenter/disasterwarning/model/Severity;

    move-result-object v14

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getWarningType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getInstruction()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getProvince()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getCity()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getCounty()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getLocation()Ljava/lang/String;

    move-result-object v20

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;

    move-object v2, v0

    invoke-direct/range {v2 .. v20}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/miui/warningcenter/disasterwarning/model/EventType;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/warningcenter/disasterwarning/model/Severity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p0 .. p0}, Lcom/miui/warningcenter/disasterwarning/model/DisasterAlertModel;->getReceivePosition()Ljava/lang/String;

    move-result-object v1

    const-string v2, "this@toDisasterInfo.receivePosition"

    invoke-static {v1, v2}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/miui/warningcenter/disasterwarning/model/DisasterInfo;->setReceivePosition(Ljava/lang/String;)V

    return-object v0
.end method
