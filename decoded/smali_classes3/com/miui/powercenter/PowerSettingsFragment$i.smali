.class Lcom/miui/powercenter/PowerSettingsFragment$i;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/PowerSettingsFragment;->l1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/PowerSettingsFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/PowerSettingsFragment;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/PowerSettingsFragment$i;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment$i;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSettingsFragment;->t0(Lcom/miui/powercenter/PowerSettingsFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/PowerSettingsFragment$i;->a:Lcom/miui/powercenter/PowerSettingsFragment;

    invoke-static {v0}, Lcom/miui/powercenter/PowerSettingsFragment;->t0(Lcom/miui/powercenter/PowerSettingsFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 0

    return-void
.end method
