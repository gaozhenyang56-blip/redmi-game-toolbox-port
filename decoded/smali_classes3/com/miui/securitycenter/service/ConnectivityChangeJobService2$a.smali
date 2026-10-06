.class Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->r()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Llb/g;->i(Landroid/content/Context;)V

    invoke-static {v0}, Lw2/t;->L(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/miui/appmanager/AppManageUtils;->s0(Landroid/content/Context;)V

    invoke-static {v0}, Lw2/b;->c(Landroid/content/Context;)V

    return-void
.end method
