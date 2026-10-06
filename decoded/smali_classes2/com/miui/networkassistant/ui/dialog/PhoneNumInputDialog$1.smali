.class Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-interface {p1, v3, v2}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->access$000(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)Ljava/util/regex/Pattern;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->access$100(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->access$100(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    :goto_0
    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->access$200(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)I

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-static {p1, v0}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->access$300(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->access$100(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->access$400(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)Landroid/widget/TextView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog$1;->this$0:Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;->access$100(Lcom/miui/networkassistant/ui/dialog/PhoneNumInputDialog;)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/view/View;->setEnabled(Z)V

    :cond_3
    :goto_1
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
