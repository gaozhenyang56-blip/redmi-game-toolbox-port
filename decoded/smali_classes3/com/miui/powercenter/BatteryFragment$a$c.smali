.class Lcom/miui/powercenter/BatteryFragment$a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/BatteryFragment$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/BatteryFragment$a;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/BatteryFragment$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/BatteryFragment$a$c;->a:Lcom/miui/powercenter/BatteryFragment$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-class v2, Lcom/miui/powercenter/bootshutdown/PowerShutdownOnTime;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const-string p1, "power_on_off_plan"

    invoke-static {p1}, Lhd/a;->O0(Ljava/lang/String;)V

    return-void
.end method
