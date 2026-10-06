.class public final Lcom/miui/autotask/common/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/autotask/common/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/common/a$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lcom/miui/autotask/common/a$a;)Z
    .locals 0

    invoke-direct {p0}, Lcom/miui/autotask/common/a$a;->d()Z

    move-result p0

    return p0
.end method

.method private final b()Z
    .locals 2

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->isPolarisSupport()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceType;->Geofence:Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceType;

    invoke-virtual {v0, v1}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->isSubServiceSupport(Lcom/xiaomi/gnss/polaris/sdk/PolarisManager$ServiceType;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private final d()Z
    .locals 1

    invoke-static {}, Lbi/k;->W()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final c()Z
    .locals 1

    invoke-static {}, Lx4/z1;->e()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/autotask/common/a$a;->b()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final e(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const-string v0, "geofenceId"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "auto_task_"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Ljk/f;->u(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-object v3

    :cond_0
    const/16 v0, 0xa

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lbk/m;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f()Z
    .locals 1

    invoke-direct {p0}, Lcom/miui/autotask/common/a$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/autotask/common/a$a;->c()Z

    move-result v0

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/miui/autotask/common/a$a;->d()Z

    move-result v0

    :goto_0
    return v0
.end method
