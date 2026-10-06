.class public interface abstract annotation Lcom/xiaomi/ai/capability/protocol/constant/ScenarioType;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/ai/capability/protocol/constant/ScenarioType$a;
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
        "Lcom/xiaomi/ai/capability/protocol/constant/ScenarioType;",
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
.field public static final Companion:Lcom/xiaomi/ai/capability/protocol/constant/ScenarioType$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final MULTI_AUDIO_TRANSLATION:I = 0x6

.field public static final OFFLINE_TRANSLATION:I = 0x2

.field public static final ONLINE_TRANSLATION:I = 0x1

.field public static final RECORDER_TRANSLATION:I = 0x3

.field public static final SCAM_DETECTION:I = 0x4

.field public static final SUBTITLE_TRANSLATION:I = 0x0

.field public static final UNKNOWN:I = -0x1

.field public static final VIDEO_TRANSLATION:I = 0x5


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/xiaomi/ai/capability/protocol/constant/ScenarioType$a;->a:Lcom/xiaomi/ai/capability/protocol/constant/ScenarioType$a;

    sput-object v0, Lcom/xiaomi/ai/capability/protocol/constant/ScenarioType;->Companion:Lcom/xiaomi/ai/capability/protocol/constant/ScenarioType$a;

    return-void
.end method
