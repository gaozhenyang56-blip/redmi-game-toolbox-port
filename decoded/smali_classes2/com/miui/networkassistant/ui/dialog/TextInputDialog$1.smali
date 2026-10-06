.class Lcom/miui/networkassistant/ui/dialog/TextInputDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/dialog/TextInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->access$000(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/TextInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/TextInputDialog;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/TextInputDialog;->access$000(Lcom/miui/networkassistant/ui/dialog/TextInputDialog;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setEnabled(Z)V

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
