.class Lcom/miui/powercenter/batteryhistory/d0$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/d0;->L(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/miui/powercenter/batteryhistory/d0;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/d0;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/d0$e;->c:Lcom/miui/powercenter/batteryhistory/d0;

    iput-boolean p2, p0, Lcom/miui/powercenter/batteryhistory/d0$e;->a:Z

    iput-boolean p3, p0, Lcom/miui/powercenter/batteryhistory/d0$e;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/d0$e;->c:Lcom/miui/powercenter/batteryhistory/d0;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/d0;->j(Lcom/miui/powercenter/batteryhistory/d0;)Lcom/miui/powercenter/PowerMainActivity;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/d0$e;->a:Z

    iget-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/d0$e;->b:Z

    invoke-static {v0, v1, v2}, Lme/w;->q0(Landroid/content/Context;ZZ)V

    return-void
.end method
