.class public final Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;
.super Lcom/miui/common/base/AlertActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/powerui/ChargingHotWarningActivity$a;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nChargingHotWarningActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChargingHotWarningActivity.kt\ncom/miui/powercenter/powerui/ChargingHotWarningActivity\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,138:1\n1#2:139\n*E\n"
    }
.end annotation


# static fields
.field public static final j:Lcom/miui/powercenter/powerui/ChargingHotWarningActivity$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private d:Lmiuix/appcompat/app/AlertDialog;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:Lde/h;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Lee/d;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity$a;-><init>(Lbk/g;)V

    sput-object v0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->j:Lcom/miui/powercenter/powerui/ChargingHotWarningActivity$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/common/base/AlertActivity;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->g:Z

    const/4 v0, 0x6

    iput v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->h:I

    new-instance v0, Lee/d;

    invoke-direct {v0}, Lee/d;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->i:Lee/d;

    return-void
.end method

.method public static synthetic i0(Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;Landroid/content/DialogInterface;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->k0(Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;Landroid/content/DialogInterface;)V

    return-void
.end method

.method private final j0()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->e:Lde/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->e:Lde/h;

    :cond_0
    return-void
.end method

.method private static final k0(Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;Landroid/content/DialogInterface;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finishAndRemoveTask()V

    return-void
.end method

.method private final l0()Landroid/widget/Button;
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->d:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->d:Lmiuix/appcompat/app/AlertDialog;

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method


# virtual methods
.method protected e0(Lmiuix/appcompat/app/AlertDialog$Builder;)V
    .locals 2
    .param p1    # Lmiuix/appcompat/app/AlertDialog$Builder;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const v0, 0x7f1212ad

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1212ac

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f080379

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setIcon(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-boolean v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->g:Z

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setEnableEnterAnim(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1212ab

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lde/f;

    invoke-direct {v0, p0}, Lde/f;-><init>(Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    :cond_0
    return-void
.end method

.method protected f0()V
    .locals 0

    return-void
.end method

.method protected g0(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 7
    .param p1    # Lmiuix/appcompat/app/AlertDialog;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/miui/common/base/AlertActivity;->g0(Lmiuix/appcompat/app/AlertDialog;)V

    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Lcom/miui/common/base/AlertActivity;->h0()V

    iget-boolean v1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->g:Z

    if-eqz v1, :cond_1

    sget-object v1, Lcom/miui/powercenter/powerui/a;->c:Lcom/miui/powercenter/powerui/a$a;

    invoke-virtual {v1}, Lcom/miui/powercenter/powerui/a$a;->a()Lcom/miui/powercenter/powerui/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/powercenter/powerui/a;->e()V

    invoke-virtual {v1}, Lcom/miui/powercenter/powerui/a$a;->a()Lcom/miui/powercenter/powerui/a;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/miui/powercenter/powerui/a;->h(J)V

    :cond_1
    iput-object p1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->d:Lmiuix/appcompat/app/AlertDialog;

    iget v1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->h:I

    if-gtz v1, :cond_2

    return-void

    :cond_2
    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    new-instance p1, Lde/h;

    iget v1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->h:I

    int-to-long v1, v1

    const-wide/16 v3, 0x3e8

    mul-long v2, v1, v3

    const-wide/16 v4, 0x3e8

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lde/h;-><init>(JJLcom/miui/powercenter/powerui/ChargingHotWarningActivity;)V

    iput-object p1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->e:Lde/h;

    invoke-static {p1}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iput-boolean v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->g:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final m0(I)V
    .locals 6

    iget-boolean v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->f:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->h:I

    invoke-direct {p0}, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->l0()Landroid/widget/Button;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x1

    if-gez p1, :cond_2

    iput-boolean v1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->f:Z

    const p1, 0x7f1212ab

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    iget-boolean p1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->f:Z

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->j0()V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100109

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v4

    invoke-virtual {v2, v3, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-eqz p1, :cond_0

    const-string v0, "Second"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->h:I

    const-string v0, "isFirst"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->g:Z

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mShowSecond = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ",mIsFirstShow = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChargingHotWarning_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->i:Lee/d;

    invoke-virtual {v0, p0}, Lee/d;->a(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->i:Lee/d;

    new-instance v1, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity$b;

    invoke-direct {v1, p0}, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity$b;-><init>(Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;)V

    invoke-virtual {v0, v1}, Lee/d;->b(Lee/d$b;)V

    invoke-super {p0, p1}, Lcom/miui/common/base/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->d:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    invoke-direct {p0}, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->j0()V

    iget-object v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->i:Lee/d;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    invoke-super {p0}, Lcom/miui/common/base/AlertActivity;->onDestroy()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "outState"

    invoke-static {p1, v0}, Lbk/m;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->g:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ChargingHotWarning_Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->g:Z

    const-string v1, "isFirst"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    iget v0, p0, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->h:I

    const-string v1, "Second"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method
