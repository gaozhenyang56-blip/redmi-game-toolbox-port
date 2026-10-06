.class Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->setClickListener(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$2;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    iput p2, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$2;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$2;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->access$000(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$2;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    invoke-static {v0}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->access$000(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;

    move-result-object v0

    iget v1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$2;->val$position:I

    invoke-interface {v0, v1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;->onItemLongClick(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
