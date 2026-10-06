.class Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->afterTextChanged(Landroid/text/Editable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;->this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;->this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$000(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;->this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$100(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;->this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;

    iget-object v2, v2, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    const v3, 0x7f08047b

    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;->this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$100(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/ImageView;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;->this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;

    iget-object v2, v2, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v2}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$200(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;->this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$300(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;->this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$400(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/miui/networkassistant/ui/adapter/RecentNumberAdapter;->search(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;->this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v1, v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$500(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;->this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v1}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/TextView;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/networkassistant/utils/IDPhoneNumberUtil;->getIspByPhoneNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;->this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;

    iget-object v0, v0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;->access$600(Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1$1;->this$1:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;

    iget-object v1, v1, Lcom/miui/networkassistant/ui/GetChargeTrafficActivity$1;->this$0:Lcom/miui/networkassistant/ui/GetChargeTrafficActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203f2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
