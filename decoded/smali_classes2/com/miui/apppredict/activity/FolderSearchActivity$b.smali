.class Lcom/miui/apppredict/activity/FolderSearchActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/activity/FolderSearchActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/apppredict/activity/FolderSearchActivity;


# direct methods
.method constructor <init>(Lcom/miui/apppredict/activity/FolderSearchActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$b;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    iget-object p2, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$b;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p2}, Lcom/miui/apppredict/activity/FolderSearchActivity;->z0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$b;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p2, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->A0(Lcom/miui/apppredict/activity/FolderSearchActivity;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x4

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$b;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->B0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$b;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->p0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$b;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->q0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$b;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->B0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Lmiuix/androidbasewidget/widget/ProgressBar;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$b;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->p0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$b;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->q0(Lcom/miui/apppredict/activity/FolderSearchActivity;)Landroidx/constraintlayout/widget/Group;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    :goto_0
    return-void

    :cond_2
    iget-object p2, p0, Lcom/miui/apppredict/activity/FolderSearchActivity$b;->a:Lcom/miui/apppredict/activity/FolderSearchActivity;

    invoke-static {p2, p1}, Lcom/miui/apppredict/activity/FolderSearchActivity;->r0(Lcom/miui/apppredict/activity/FolderSearchActivity;Ljava/lang/String;)V

    return-void
.end method
