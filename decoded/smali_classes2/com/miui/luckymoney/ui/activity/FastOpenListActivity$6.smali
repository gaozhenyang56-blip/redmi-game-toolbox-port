.class Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;


# direct methods
.method constructor <init>(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$6;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity$6;->this$0:Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;

    invoke-static {p1}, Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;->access$700(Lcom/miui/luckymoney/ui/activity/FastOpenListActivity;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CompoundButton;->toggle()V

    return-void
.end method
