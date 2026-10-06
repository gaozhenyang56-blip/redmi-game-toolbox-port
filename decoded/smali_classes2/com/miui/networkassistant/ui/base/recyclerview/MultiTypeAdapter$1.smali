.class Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$1;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    iput p2, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$1;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->access$000(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$1;->this$0:Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;->access$000(Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter;)Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/ui/base/recyclerview/MultiTypeAdapter$OnItemClickListener;->onItemClick(I)V

    :cond_0
    return-void
.end method
