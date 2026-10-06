.class Lcom/miui/simlock/activity/SimLockPinActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/simlock/activity/SimLockPinActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/simlock/activity/SimLockPinActivity;


# direct methods
.method constructor <init>(Lcom/miui/simlock/activity/SimLockPinActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$b;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$b;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->y0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$b;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {v0}, Lcom/miui/simlock/activity/SimLockPinActivity;->y0(Lcom/miui/simlock/activity/SimLockPinActivity;)I

    move-result v0

    if-lt v0, v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-ne p1, v1, :cond_2

    :cond_1
    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$b;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->A0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$b;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->A0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$b;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    const v1, 0x7f060db6

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$b;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->A0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/simlock/activity/SimLockPinActivity$b;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    invoke-static {p1}, Lcom/miui/simlock/activity/SimLockPinActivity;->A0(Lcom/miui/simlock/activity/SimLockPinActivity;)Landroid/widget/Button;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/simlock/activity/SimLockPinActivity$b;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    const v1, 0x7f060db7

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method
