.class Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->update(Ljava/util/Observable;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

.field final synthetic val$message:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;Landroid/os/Message;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    iput-object p2, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->val$message:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->val$message:Landroid/os/Message;

    iget v1, v0, Landroid/os/Message;->what:I

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v1}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$000(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$100(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$200(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$300(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne v1, v0, :cond_1

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$100(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$300(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$100(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$200(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$400(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f121c46

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_1
    const/4 v0, 0x3

    if-ne v1, v0, :cond_2

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$300(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$100(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$200(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    :cond_2
    const/4 v0, 0x4

    if-ne v1, v0, :cond_3

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$100(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$200(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$300(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-static {v0}, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;->access$500(Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f121c45

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView$1;->this$0:Lcom/miui/warningcenter/policeassist/view/PaLocationFloatingView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method
