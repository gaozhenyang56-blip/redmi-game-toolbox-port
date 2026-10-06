.class final Lcom/miui/autotask/common/a$b;
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
        "Lbi/k;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lcom/miui/autotask/common/a$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/autotask/common/a$b;

    invoke-direct {v0}, Lcom/miui/autotask/common/a$b;-><init>()V

    sput-object v0, Lcom/miui/autotask/common/a$b;->a:Lcom/miui/autotask/common/a$b;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lbi/k;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lbi/k;->U(Landroid/content/Context;)Lbi/k;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "GeofenceManager"

    const-string v2, "init izat manager error"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/autotask/common/a$b;->a()Lbi/k;

    move-result-object v0

    return-object v0
.end method
