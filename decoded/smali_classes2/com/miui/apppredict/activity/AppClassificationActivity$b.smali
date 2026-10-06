.class Lcom/miui/apppredict/activity/AppClassificationActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/apppredict/activity/AppClassificationActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/apppredict/activity/AppClassificationActivity;


# direct methods
.method constructor <init>(Lcom/miui/apppredict/activity/AppClassificationActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$b;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

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

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "input text = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "AppPredict"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    iget-object p3, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$b;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {p3}, Lcom/miui/apppredict/activity/AppClassificationActivity;->y0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Landroid/view/View;

    move-result-object p3

    if-eqz p2, :cond_1

    const/16 p2, 0x8

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setVisibility(I)V

    iget-object p2, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$b;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {p2}, Lcom/miui/apppredict/activity/AppClassificationActivity;->z0(Lcom/miui/apppredict/activity/AppClassificationActivity;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$b;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {p2, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->A0(Lcom/miui/apppredict/activity/AppClassificationActivity;Ljava/lang/String;)Ljava/lang/String;

    return-void

    :cond_2
    iget-object p2, p0, Lcom/miui/apppredict/activity/AppClassificationActivity$b;->a:Lcom/miui/apppredict/activity/AppClassificationActivity;

    invoke-static {p2, p1}, Lcom/miui/apppredict/activity/AppClassificationActivity;->B0(Lcom/miui/apppredict/activity/AppClassificationActivity;Ljava/lang/String;)V

    return-void
.end method
