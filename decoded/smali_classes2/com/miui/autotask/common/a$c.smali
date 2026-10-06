.class final Lcom/miui/autotask/common/a$c;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/autotask/common/a;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/autotask/common/a$c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/autotask/common/a$c;

    invoke-direct {v0}, Lcom/miui/autotask/common/a$c;-><init>()V

    sput-object v0, Lcom/miui/autotask/common/a$c;->a:Lcom/miui/autotask/common/a$c;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;
    .locals 1

    invoke-static {}, Lcom/miui/common/e;->c()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;->getInstance(Landroid/content/Context;)Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/common/a$c;->a()Lcom/xiaomi/gnss/polaris/sdk/PolarisManager;

    move-result-object v0

    return-object v0
.end method
