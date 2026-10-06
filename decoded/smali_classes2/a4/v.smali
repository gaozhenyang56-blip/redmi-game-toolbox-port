.class public final synthetic La4/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/autotask/taskitem/AirplaneResultItem;

.field public final synthetic b:Lcom/miui/autotask/taskitem/AirplaneResultItem;

.field public final synthetic c:Landroidx/recyclerview/widget/RecyclerView$h;

.field public final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lcom/miui/autotask/taskitem/AirplaneResultItem;Lcom/miui/autotask/taskitem/AirplaneResultItem;Landroidx/recyclerview/widget/RecyclerView$h;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/v;->a:Lcom/miui/autotask/taskitem/AirplaneResultItem;

    iput-object p2, p0, La4/v;->b:Lcom/miui/autotask/taskitem/AirplaneResultItem;

    iput-object p3, p0, La4/v;->c:Landroidx/recyclerview/widget/RecyclerView$h;

    iput p4, p0, La4/v;->d:I

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    iget-object v0, p0, La4/v;->a:Lcom/miui/autotask/taskitem/AirplaneResultItem;

    iget-object v1, p0, La4/v;->b:Lcom/miui/autotask/taskitem/AirplaneResultItem;

    iget-object v2, p0, La4/v;->c:Landroidx/recyclerview/widget/RecyclerView$h;

    iget v3, p0, La4/v;->d:I

    move-object v4, p1

    move v5, p2

    invoke-static/range {v0 .. v5}, La4/e2;->y(Lcom/miui/autotask/taskitem/AirplaneResultItem;Lcom/miui/autotask/taskitem/AirplaneResultItem;Landroidx/recyclerview/widget/RecyclerView$h;ILandroid/content/DialogInterface;I)V

    return-void
.end method
