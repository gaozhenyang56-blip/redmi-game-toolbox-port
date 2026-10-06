.class Lcom/miui/autotask/fragment/NewTaskFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/autotask/view/RecyclerViewPreference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/autotask/fragment/NewTaskFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/fragment/NewTaskFragment;


# direct methods
.method constructor <init>(Lcom/miui/autotask/fragment/NewTaskFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment$a;->a:Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment$a;->a:Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/NewTaskFragment;->f0(Lcom/miui/autotask/fragment/NewTaskFragment;)Lcom/miui/autotask/view/RecyclerViewPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->x(I)V

    iget-object v0, p0, Lcom/miui/autotask/fragment/NewTaskFragment$a;->a:Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-static {v0}, Lcom/miui/autotask/fragment/NewTaskFragment;->g0(Lcom/miui/autotask/fragment/NewTaskFragment;)Lcom/miui/autotask/view/RecyclerViewPreference;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/autotask/fragment/NewTaskFragment$a;->a:Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-static {v1}, Lcom/miui/autotask/fragment/NewTaskFragment;->f0(Lcom/miui/autotask/fragment/NewTaskFragment;)Lcom/miui/autotask/view/RecyclerViewPreference;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->s(I)Lcom/miui/autotask/taskitem/TaskItem;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/miui/autotask/view/RecyclerViewPreference;->o(Lcom/miui/autotask/taskitem/TaskItem;)V

    return-void
.end method
