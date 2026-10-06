.class Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;->m()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;


# direct methods
.method constructor <init>(Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$e;->a:Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/miui/securitycenter/service/ConnectivityChangeJobService2$e;->a:Lcom/miui/securitycenter/service/ConnectivityChangeJobService2;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lo2/d;->c(Landroid/content/Context;)V

    return-void
.end method
