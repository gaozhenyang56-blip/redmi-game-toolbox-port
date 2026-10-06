.class Lcom/miui/powercenter/batteryhistory/y$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/batteryhistory/y;->w(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/miui/powercenter/batteryhistory/y;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/batteryhistory/y;Z)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y$k;->b:Lcom/miui/powercenter/batteryhistory/y;

    iput-boolean p2, p0, Lcom/miui/powercenter/batteryhistory/y$k;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y$k;->b:Lcom/miui/powercenter/batteryhistory/y;

    invoke-static {v0}, Lcom/miui/powercenter/batteryhistory/y;->q(Lcom/miui/powercenter/batteryhistory/y;)Landroid/content/Context;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/y$k;->a:Z

    invoke-static {v0, v1}, Lme/w;->C0(Landroid/content/Context;Z)V

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/y$k;->a:Z

    const-string v1, "HomeClick"

    invoke-static {v0, v1}, Lhd/a;->b1(ZLjava/lang/String;)V

    return-void
.end method
