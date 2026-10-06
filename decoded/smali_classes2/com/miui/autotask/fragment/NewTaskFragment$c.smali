.class Lcom/miui/autotask/fragment/NewTaskFragment$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/autotask/fragment/NewTaskFragment$d;


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

    iput-object p1, p0, Lcom/miui/autotask/fragment/NewTaskFragment$c;->a:Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/miui/autotask/fragment/NewTaskFragment$c;->a:Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-static {v1}, Lcom/miui/autotask/fragment/NewTaskFragment;->h0(Lcom/miui/autotask/fragment/NewTaskFragment;)Lcom/miui/autotask/view/RecyclerViewPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autotask/view/RecyclerViewPreference;->q()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/miui/autotask/fragment/NewTaskFragment$c;->a:Lcom/miui/autotask/fragment/NewTaskFragment;

    invoke-static {v1}, Lcom/miui/autotask/fragment/NewTaskFragment;->f0(Lcom/miui/autotask/fragment/NewTaskFragment;)Lcom/miui/autotask/view/RecyclerViewPreference;

    move-result-object v1

    invoke-virtual {v1}, Lcom/miui/autotask/view/RecyclerViewPreference;->q()Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
