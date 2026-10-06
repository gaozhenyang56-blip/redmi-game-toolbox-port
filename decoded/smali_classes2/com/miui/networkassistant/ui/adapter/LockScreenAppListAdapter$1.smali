.class Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->onBindViewHolder(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$ViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;I)V
    .locals 0

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$1;->this$0:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

    iput p2, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$1;->this$0:Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;

    invoke-static {p1}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;->access$000(Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter;)Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/miui/networkassistant/ui/adapter/LockScreenAppListAdapter$OnItemClickListener;->onItemClick(I)V

    return-void
.end method
