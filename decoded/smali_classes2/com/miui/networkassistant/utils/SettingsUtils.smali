.class public final Lcom/miui/networkassistant/utils/SettingsUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSettingsUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsUtils.kt\ncom/miui/networkassistant/utils/SettingsUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,37:1\n1#2:38\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final IS_PREVIEW:Ljava/lang/String; = "is_preview"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final MM_ACCOUNT_BALANCE:Ljava/lang/String; = "mm_account_balance"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final TRAFFIC_DEVICE_UUID:Ljava/lang/String; = "traffic_device_uuid"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final VIRTUALSIM_TRAFFIC_USE_DATA:Ljava/lang/String; = "virtualsim_traffic_use_data"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static uuid:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/utils/SettingsUtils;

    invoke-direct {v0}, Lcom/miui/networkassistant/utils/SettingsUtils;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/utils/SettingsUtils;->INSTANCE:Lcom/miui/networkassistant/utils/SettingsUtils;

    const-string v0, ""

    sput-object v0, Lcom/miui/networkassistant/utils/SettingsUtils;->uuid:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final initUUID()Ljava/lang/String;
    .locals 7

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v0, "randomUUID().toString()"

    invoke-static {v1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "-"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ljk/f;->s(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/networkassistant/utils/SettingsUtils;->uuid:Ljava/lang/String;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/miui/networkassistant/utils/SettingsUtils;->uuid:Ljava/lang/String;

    const-string v2, "traffic_device_uuid"

    invoke-static {v0, v2, v1}, Lam/a;->j(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    sget-object v0, Lcom/miui/networkassistant/utils/SettingsUtils;->uuid:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final getMmAccountBalance()J
    .locals 4

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mm_account_balance"

    const-wide/16 v2, 0x0

    invoke-static {v0, v1, v2, v3}, Lam/a;->d(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getUUID()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/networkassistant/utils/SettingsUtils;->uuid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "traffic_device_uuid"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lam/a;->e(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-direct {p0}, Lcom/miui/networkassistant/utils/SettingsUtils;->initUUID()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/miui/networkassistant/utils/SettingsUtils;->uuid:Ljava/lang/String;

    :goto_2
    return-object v0
.end method

.method public final getVsimTrafficResult()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "virtualsim_traffic_use_data"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Lam/a;->e(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(Application.ge\u2026SIM_TRAFFIC_USE_DATA, \"\")"

    invoke-static {v0, v1}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final isPreviewEnv()Z
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "is_preview"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lam/a;->c(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method
