.class public interface abstract annotation Lcom/xiaomi/ai/capability/protocol/constant/FuncType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ai/capability/protocol/constant/FuncType$a;
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u001b\n\u0002\u0008\u0003\u0008\u0087\u0002\u0018\u0000 \u00022\u00020\u0001:\u0001\u0003B\u0000\u00a8\u0006\u0004"
    }
    d2 = {
        "Lcom/xiaomi/ai/capability/protocol/constant/FuncType;",
        "",
        "Companion",
        "a",
        "AiCapabilityProtocol_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
.end annotation

.annotation runtime Lkotlin/annotation/Retention;
    value = .enum Lpj/a;->a:Lpj/a;
.end annotation


# static fields
.field public static final ATTACH_TO_SERVER:I = 0x0

.field public static final CANCEL_DOWNLOAD_MODEL:I = 0x4

.field public static final CHECK_MODEL_AVAILABLE:I = 0xd

.field public static final CHECK_MODEL_DOWNLOADING:I = 0x11

.field public static final CHECK_MODEL_EXIST:I = 0x2

.field public static final CHECK_MODEL_UPDATE:I = 0xc

.field public static final Companion:Lcom/xiaomi/ai/capability/protocol/constant/FuncType$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DELETE_MODEL:I = 0xf

.field public static final GET_CURRENT_MODEL_INFO:I = 0xe

.field public static final GET_PROTOCOL_VERSION:I = 0x5

.field public static final GET_SPEAKER_IDS:I = 0x10

.field public static final IS_SUPPORT_OFFLINE_RECOGNIZE:I = 0x1

.field public static final ON_ASR_START:I = 0x3eb

.field public static final ON_ASR_STOP:I = 0x3ec

.field public static final ON_CHECK_MODEL_AVAILABLE:I = 0x3f4

.field public static final ON_CHECK_MODEL_DOWNLOADING:I = 0x3f6

.field public static final ON_CHECK_MODEL_UPDATE:I = 0x3ef

.field public static final ON_ERROR:I = 0x3ea

.field public static final ON_EVENT:I = 0x3e9

.field public static final ON_GET_MODEL_INFO:I = 0x3f5

.field public static final ON_INTERRUPT:I = 0x3e8

.field public static final ON_MODEL_DOWNLOAD_COMPLETE:I = 0x3f2

.field public static final ON_MODEL_DOWNLOAD_FAIL:I = 0x3f1

.field public static final ON_MODEL_DOWNLOAD_PROGRESS:I = 0x3f0

.field public static final ON_MODEL_DOWNLOAD_STAGE:I = 0x3f3

.field public static final ON_RECOGNIZE_START:I = 0x3ed

.field public static final ON_RECOGNIZE_STOP:I = 0x3ee

.field public static final RELEASE:I = 0xb

.field public static final START_ASR:I = 0x9

.field public static final START_DOWNLOAD_MODEL:I = 0x3

.field public static final START_RECOGNIZE:I = 0x7

.field public static final START_TEXT_TRANSLATE:I = 0x6

.field public static final STOP_ASR:I = 0xa

.field public static final STOP_RECOGNIZE:I = 0x8


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/xiaomi/ai/capability/protocol/constant/FuncType$a;->a:Lcom/xiaomi/ai/capability/protocol/constant/FuncType$a;

    sput-object v0, Lcom/xiaomi/ai/capability/protocol/constant/FuncType;->Companion:Lcom/xiaomi/ai/capability/protocol/constant/FuncType$a;

    return-void
.end method
