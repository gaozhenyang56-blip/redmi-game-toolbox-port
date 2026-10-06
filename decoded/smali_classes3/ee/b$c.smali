.class Lee/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lee/b;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lee/b;


# direct methods
.method constructor <init>(Lee/b;)V
    .locals 0

    iput-object p1, p0, Lee/b$c;->a:Lee/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lee/b$c;->a:Lee/b;

    invoke-static {v0}, Lee/b;->b(Lee/b;)Lcom/miui/powercenter/batteryhistory/b$a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lee/b$c;->a:Lee/b;

    invoke-static {v0}, Lee/b;->b(Lee/b;)Lcom/miui/powercenter/batteryhistory/b$a;

    move-result-object v0

    iget-boolean v0, v0, Lcom/miui/powercenter/batteryhistory/b$a;->g:Z

    if-nez v0, :cond_0

    invoke-static {}, Lmd/o;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lmd/o;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lee/b$c;->a:Lee/b;

    invoke-static {v0}, Lee/b;->b(Lee/b;)Lcom/miui/powercenter/batteryhistory/b$a;

    move-result-object v0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/miui/powercenter/batteryhistory/b$a;->g:Z

    const-string v0, "BatteryInfoReceiver"

    const-string v1, " set isChargeProtection true"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
