.class public final Lhi/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000e\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u001a\u000e\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "",
        "type",
        "",
        "a",
        "AiCapabilityProtocol_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation


# direct methods
.method public static final a(I)Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    packed-switch p0, :pswitch_data_0

    packed-switch p0, :pswitch_data_1

    const-string v0, "UNKNOWN"

    goto/16 :goto_0

    :pswitch_0
    const-string v0, "ON_CHECK_MODEL_DOWNLOADING"

    goto/16 :goto_0

    :pswitch_1
    const-string v0, "ON_GET_MODEL_INFO"

    goto/16 :goto_0

    :pswitch_2
    const-string v0, "ON_CHECK_MODEL_AVAILABLE"

    goto/16 :goto_0

    :pswitch_3
    const-string v0, "ON_MODEL_DOWNLOAD_STAGE"

    goto/16 :goto_0

    :pswitch_4
    const-string v0, "ON_MODEL_DOWNLOAD_COMPLETE"

    goto/16 :goto_0

    :pswitch_5
    const-string v0, "ON_MODEL_DOWNLOAD_FAIL"

    goto/16 :goto_0

    :pswitch_6
    const-string v0, "ON_MODEL_DOWNLOAD_PROGRESS"

    goto/16 :goto_0

    :pswitch_7
    const-string v0, "ON_CHECK_MODEL_UPDATE"

    goto :goto_0

    :pswitch_8
    const-string v0, "ON_RECOGNIZE_STOP"

    goto :goto_0

    :pswitch_9
    const-string v0, "ON_RECOGNIZE_START"

    goto :goto_0

    :pswitch_a
    const-string v0, "ON_ASR_STOP"

    goto :goto_0

    :pswitch_b
    const-string v0, "ON_ASR_START"

    goto :goto_0

    :pswitch_c
    const-string v0, "ON_ERROR"

    goto :goto_0

    :pswitch_d
    const-string v0, "ON_EVENT"

    goto :goto_0

    :pswitch_e
    const-string v0, "ON_INTERRUPT"

    goto :goto_0

    :pswitch_f
    const-string v0, "CHECK_MODEL_DOWNLOADING"

    goto :goto_0

    :pswitch_10
    const-string v0, "GET_SPEAKER_IDS"

    goto :goto_0

    :pswitch_11
    const-string v0, "DELETE_MODEL"

    goto :goto_0

    :pswitch_12
    const-string v0, "GET_CURRENT_MODEL_INFO"

    goto :goto_0

    :pswitch_13
    const-string v0, "CHECK_MODEL_AVAILABLE"

    goto :goto_0

    :pswitch_14
    const-string v0, "CHECK_MODEL_UPDATE"

    goto :goto_0

    :pswitch_15
    const-string v0, "RELEASE"

    goto :goto_0

    :pswitch_16
    const-string v0, "STOP_ASR"

    goto :goto_0

    :pswitch_17
    const-string v0, "START_ASR"

    goto :goto_0

    :pswitch_18
    const-string v0, "STOP_RECOGNIZE"

    goto :goto_0

    :pswitch_19
    const-string v0, "START_RECOGNIZE"

    goto :goto_0

    :pswitch_1a
    const-string v0, "START_TEXT_TRANSLATE"

    goto :goto_0

    :pswitch_1b
    const-string v0, "GET_PROTOCOL_VERSION"

    goto :goto_0

    :pswitch_1c
    const-string v0, "CANCEL_DOWNLOAD_MODEL"

    goto :goto_0

    :pswitch_1d
    const-string v0, "START_DOWNLOAD_MODEL"

    goto :goto_0

    :pswitch_1e
    const-string v0, "CHECK_MODEL_EXIST"

    goto :goto_0

    :pswitch_1f
    const-string v0, "IS_SUPPORT_OFFLINE_RECOGNIZE"

    goto :goto_0

    :pswitch_20
    const-string v0, "ATTACH_TO_SERVER"

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x5b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x5d

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3e8
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
