.class public Lcom/miui/powercenter/batteryhistory/y;
.super Lcom/miui/powercenter/batteryhistory/z$d;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/batteryhistory/y$l;
    }
.end annotation


# static fields
.field private static s:I = 0x1

.field private static t:I = 0x2

.field private static u:I = 0x3

.field private static v:I = 0x4


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lmiuix/appcompat/widget/Spinner;

.field private c:Lcom/miui/powercenter/batteryhistory/y$l;

.field private d:Landroid/widget/TextView;

.field private e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private f:I

.field private g:Lmiuix/flexible/view/HyperCellLayout;

.field public h:Z

.field public i:Z

.field public j:Z

.field private k:Z

.field private l:Lcom/miui/powercenter/PowerSaveMainFragment;

.field private m:Lmiuix/flexible/view/HyperCellLayout;

.field private n:Landroid/widget/TextView;

.field private o:Lmiuix/flexible/view/HyperCellLayout;

.field private p:Z

.field private q:Z

.field private r:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/miui/powercenter/PowerSaveMainFragment;)V
    .locals 4

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0e0407

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/z$d;-><init>(Landroid/view/View;)V

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y;->e:Ljava/util/HashMap;

    const/4 p1, -0x1

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/y;->f:I

    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/y;->h:Z

    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/y;->j:Z

    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/y;->p:Z

    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/y;->q:Z

    iput-object p2, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/miui/powercenter/batteryhistory/y;->l:Lcom/miui/powercenter/PowerSaveMainFragment;

    invoke-static {}, Lce/g;->q()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/y;->h:Z

    invoke-static {}, Lpg/i;->H()Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/y;->i:Z

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {p1}, Lpg/i;->F(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/y;->j:Z

    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const p3, 0x7f0b08c6

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b0abb

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lmiuix/appcompat/widget/Spinner;

    iput-object p3, p0, Lcom/miui/powercenter/batteryhistory/y;->b:Lmiuix/appcompat/widget/Spinner;

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b08c7

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lmiuix/flexible/view/HyperCellLayout;

    iput-object p3, p0, Lcom/miui/powercenter/batteryhistory/y;->g:Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance p3, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/y;->B()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/y;->A()[Ljava/lang/CharSequence;

    move-result-object v1

    const/4 v3, 0x0

    invoke-direct {p3, p2, v0, v1, v3}, Lmiuix/appcompat/adapter/SpinnerDoubleLineContentAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;[I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->b:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/y;->D(Lmiuix/appcompat/widget/Spinner;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;

    check-cast v0, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;

    const v3, 0x7f0e0339

    invoke-direct {v1, p2, v3, p3, v0}, Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter;-><init>(Landroid/content/Context;ILandroid/widget/ArrayAdapter;Lmiuix/appcompat/internal/adapter/SpinnerCheckableArrayAdapter$CheckedStateProvider;)V

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/y;->b:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p3, v1}, Lmiuix/appcompat/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/y;->O()V

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/y;->b:Lmiuix/appcompat/widget/Spinner;

    new-instance v0, Lcom/miui/powercenter/batteryhistory/y$c;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/batteryhistory/y$c;-><init>(Lcom/miui/powercenter/batteryhistory/y;)V

    invoke-virtual {p3, v0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p3, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v0, 0x7f0b03fd

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lmiuix/flexible/view/HyperCellLayout;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b03fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/flexible/view/HyperCellLayout;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->m:Lmiuix/flexible/view/HyperCellLayout;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0c43

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->n:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0c44

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->d:Landroid/widget/TextView;

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b03fe

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/flexible/view/HyperCellLayout;

    iput-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->o:Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const v1, 0x7f0b0403

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {p3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->m:Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {p1}, Lme/u;->c(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->g:Lmiuix/flexible/view/HyperCellLayout;

    invoke-static {v1}, Lme/u;->c(Landroid/view/View;)V

    invoke-static {p3}, Lme/u;->c(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->m:Lmiuix/flexible/view/HyperCellLayout;

    invoke-static {v1}, Lme/u;->c(Landroid/view/View;)V

    invoke-static {v0}, Lme/u;->c(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->o:Lmiuix/flexible/view/HyperCellLayout;

    invoke-static {v1}, Lme/u;->c(Landroid/view/View;)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->m:Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/y;->L(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y;->g:Lmiuix/flexible/view/HyperCellLayout;

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/y;->L(Landroid/view/View;)V

    invoke-direct {p0, p3}, Lcom/miui/powercenter/batteryhistory/y;->L(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y;->m:Lmiuix/flexible/view/HyperCellLayout;

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/y;->L(Landroid/view/View;)V

    invoke-direct {p0, v0}, Lcom/miui/powercenter/batteryhistory/y;->L(Landroid/view/View;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y;->o:Lmiuix/flexible/view/HyperCellLayout;

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/y;->L(Landroid/view/View;)V

    new-instance p1, Lcom/miui/powercenter/batteryhistory/y$l;

    invoke-direct {p1, p0}, Lcom/miui/powercenter/batteryhistory/y$l;-><init>(Lcom/miui/powercenter/batteryhistory/y;)V

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y;->c:Lcom/miui/powercenter/batteryhistory/y$l;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "miui.intent.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    invoke-static {}, Lce/g;->q()Z

    move-result p3

    if-eqz p3, :cond_0

    const-string p3, "miui.intent.action.HIDE_MODE_CHANGE"

    invoke-virtual {p1, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iget-object p3, p0, Lcom/miui/powercenter/batteryhistory/y;->c:Lcom/miui/powercenter/batteryhistory/y$l;

    const/4 v0, 0x2

    invoke-static {p2, p3, p1, v0}, Lx4/v;->m(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private A()[Ljava/lang/CharSequence;
    .locals 8

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->j(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->g(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const/4 v3, 0x3

    invoke-static {v2, v1, v0, v3}, Lcom/miui/powercenter/batteryhistory/y;->z(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v1, v0, v4}, Lcom/miui/powercenter/batteryhistory/y;->z(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v3

    iget-object v5, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const/4 v6, 0x1

    invoke-static {v5, v1, v0, v6}, Lcom/miui/powercenter/batteryhistory/y;->z(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const/4 v7, 0x2

    invoke-static {v6, v1, v0, v7}, Lcom/miui/powercenter/batteryhistory/y;->z(Landroid/content/Context;III)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v6, p0, Lcom/miui/powercenter/batteryhistory/y;->h:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/miui/powercenter/batteryhistory/y;->i:Z

    if-eqz v6, :cond_1

    :cond_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/y;->j:Z

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v4, v2, :cond_3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    aput-object v2, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v0
.end method

.method private B()[Ljava/lang/CharSequence;
    .locals 8

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/miui/powercenter/batteryhistory/y;->i:Z

    if-eqz v1, :cond_0

    const v1, 0x7f120fff

    goto :goto_0

    :cond_0
    const v1, 0x7f12105a

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f121058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12130e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121277

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v5, p0, Lcom/miui/powercenter/batteryhistory/y;->h:Z

    const/4 v6, 0x0

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/miui/powercenter/batteryhistory/y;->i:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v0, v6

    goto :goto_2

    :cond_2
    :goto_1
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->e:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    sget v7, Lcom/miui/powercenter/batteryhistory/y;->s:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    :goto_2
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->e:Ljava/util/HashMap;

    add-int/lit8 v5, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget v7, Lcom/miui/powercenter/batteryhistory/y;->t:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->e:Ljava/util/HashMap;

    add-int/lit8 v1, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget v5, Lcom/miui/powercenter/batteryhistory/y;->u:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/y;->j:Z

    if-eqz v0, :cond_3

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->e:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget v2, Lcom/miui/powercenter/batteryhistory/y;->v:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/CharSequence;

    :goto_3
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_4

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    aput-object v1, v0, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_4
    return-object v0
.end method

.method private C()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->g(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {v1}, Lme/w;->j(Landroid/content/Context;)I

    move-result v1

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-static {v2, v0, v1, v3}, Lme/b0;->o(Landroid/content/Context;III)I

    move-result v0

    div-int/lit8 v1, v0, 0x3c

    rem-int/lit8 v0, v0, 0x3c

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    new-array v6, v3, [Ljava/lang/Object;

    invoke-static {v1}, Lme/b0;->i(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    const v7, 0x7f100069

    invoke-virtual {v5, v7, v1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v8

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v5, v3, [Ljava/lang/Object;

    invoke-static {v0}, Lme/b0;->i(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v8

    const v6, 0x7f10006a

    invoke-virtual {v1, v6, v0, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v3

    const v0, 0x7f120c99

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lme/w;->c0()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const v2, 0x7f121231

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const v2, 0x7f121230

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v8

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private D(Lmiuix/appcompat/widget/Spinner;)Ljava/lang/Object;
    .locals 5

    :try_start_0
    const-string v0, "miuix.appcompat.widget.Spinner$SpinnerCheckedProvider"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Lmiuix/appcompat/widget/Spinner;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "PowerFeatureViewHolder"

    const-string v1, "getSpinnerCheckedProvider error:"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method private F()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/y;->p:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/powercenter/batteryhistory/y;->q:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private I()V
    .locals 8

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const v1, 0x7f0e0441

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b08df

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const v4, 0x7f1212a2

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/16 v6, 0x78

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-boolean v7, p0, Lcom/miui/powercenter/batteryhistory/y;->k:Z

    const-string v3, "diting"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lx4/a0;->s([Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, -0x1

    iget-object v5, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {v5}, Lme/w;->A(Landroid/content/Context;)I

    move-result v5

    if-ne v5, v4, :cond_0

    iput-boolean v4, p0, Lcom/miui/powercenter/batteryhistory/y;->k:Z

    move v5, v4

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {v3}, Lme/s;->b(Landroid/content/Context;)I

    move-result v3

    move v5, v7

    :goto_0
    const/16 v6, 0x3c

    if-ne v3, v6, :cond_1

    goto :goto_1

    :cond_1
    move v4, v7

    :goto_1
    iget-object v6, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "is_smart_fps_before"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v5, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "state_of_screen_fps_before"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v7, v4

    :cond_2
    iget v3, p0, Lcom/miui/powercenter/batteryhistory/y;->f:I

    new-instance v4, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-direct {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-boolean v5, p0, Lcom/miui/powercenter/batteryhistory/y;->i:Z

    if-eqz v5, :cond_3

    const v5, 0x7f120ffd

    goto :goto_2

    :cond_3
    const v5, 0x7f121094

    :goto_2
    invoke-virtual {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f121093

    invoke-virtual {v4, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v4

    if-eqz v7, :cond_4

    move-object v2, v0

    :cond_4
    invoke-virtual {v4, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v4, Lcom/miui/powercenter/batteryhistory/y$f;

    invoke-direct {v4, p0, v1}, Lcom/miui/powercenter/batteryhistory/y$f;-><init>(Lcom/miui/powercenter/batteryhistory/y;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    new-instance v2, Lcom/miui/powercenter/batteryhistory/y$e;

    invoke-direct {v2, p0, v3}, Lcom/miui/powercenter/batteryhistory/y$e;-><init>(Lcom/miui/powercenter/batteryhistory/y;I)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/miui/powercenter/batteryhistory/y$d;

    invoke-direct {v1, p0, v3}, Lcom/miui/powercenter/batteryhistory/y$d;-><init>(Lcom/miui/powercenter/batteryhistory/y;I)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    invoke-static {}, Lhd/a;->V0()V

    return-void
.end method

.method private K(I)V
    .locals 3

    iget v0, p0, Lcom/miui/powercenter/batteryhistory/y;->f:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    sget v1, Lcom/miui/powercenter/batteryhistory/y;->t:I

    const/4 v2, 0x0

    if-ne p1, v1, :cond_2

    sget p1, Lcom/miui/powercenter/batteryhistory/y;->s:I

    if-ne v0, p1, :cond_1

    invoke-direct {p0, v2}, Lcom/miui/powercenter/batteryhistory/y;->u(Z)V

    goto :goto_0

    :cond_1
    sget p1, Lcom/miui/powercenter/batteryhistory/y;->u:I

    if-ne v0, p1, :cond_5

    invoke-direct {p0, v2}, Lcom/miui/powercenter/batteryhistory/y;->v(Z)V

    goto :goto_0

    :cond_2
    sget v0, Lcom/miui/powercenter/batteryhistory/y;->u:I

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    invoke-direct {p0, v1}, Lcom/miui/powercenter/batteryhistory/y;->v(Z)V

    goto :goto_0

    :cond_3
    sget v0, Lcom/miui/powercenter/batteryhistory/y;->s:I

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/y;->F()Z

    move-result p1

    if-nez p1, :cond_5

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/y;->I()V

    goto :goto_0

    :cond_4
    sget v0, Lcom/miui/powercenter/batteryhistory/y;->v:I

    if-ne p1, v0, :cond_5

    invoke-direct {p0, v1}, Lcom/miui/powercenter/batteryhistory/y;->N(Z)V

    :cond_5
    :goto_0
    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/y;->p:Z

    iput-boolean v2, p0, Lcom/miui/powercenter/batteryhistory/y;->q:Z

    return-void
.end method

.method private L(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->l:Lcom/miui/powercenter/PowerSaveMainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lx4/t;->F(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->l:Lcom/miui/powercenter/PowerSaveMainFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07145e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private M()V
    .locals 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->b:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v1

    const/high16 v2, 0x42480000    # 50.0f

    sub-float/2addr v1, v2

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/y;->b:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lmiuix/appcompat/widget/Spinner;->performClick(FF)Z

    :cond_0
    return-void
.end method

.method private N(Z)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {}, Lpg/d;->c()Z

    move-result p1

    if-nez p1, :cond_0

    invoke-static {v0}, Lhd/a;->u1(Z)V

    const-string p1, "home"

    invoke-static {p1}, Lpg/e;->h(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {p1, v0, v0}, Lme/w;->F0(Landroid/content/Context;ZZ)V

    return-void

    :cond_0
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const v0, 0x7f0e03e5

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0b0884

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f1212a3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0b022c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iget v1, p0, Lcom/miui/powercenter/batteryhistory/y;->f:I

    new-instance v2, Lcom/miui/powercenter/batteryhistory/y$a;

    invoke-direct {v2, p0, v0, v1}, Lcom/miui/powercenter/batteryhistory/y$a;-><init>(Lcom/miui/powercenter/batteryhistory/y;Landroid/widget/CheckBox;I)V

    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-direct {v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f1212a5

    invoke-virtual {v0, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x104000a

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/batteryhistory/y$b;

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/y$b;-><init>(Lcom/miui/powercenter/batteryhistory/y;I)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    invoke-static {p1}, Lhd/a;->u1(Z)V

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {v1, p1, v0}, Lme/w;->F0(Landroid/content/Context;ZZ)V

    :goto_0
    invoke-static {}, Lhd/a;->W()V

    return-void
.end method

.method private O()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->P(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->b:Lmiuix/appcompat/widget/Spinner;

    sget v1, Lcom/miui/powercenter/batteryhistory/y;->s:I

    invoke-direct {p0, v1}, Lcom/miui/powercenter/batteryhistory/y;->y(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    sget v0, Lcom/miui/powercenter/batteryhistory/y;->s:I

    :goto_0
    iput v0, p0, Lcom/miui/powercenter/batteryhistory/y;->f:I

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->b:Lmiuix/appcompat/widget/Spinner;

    sget v1, Lcom/miui/powercenter/batteryhistory/y;->u:I

    invoke-direct {p0, v1}, Lcom/miui/powercenter/batteryhistory/y;->y(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->g:Lmiuix/flexible/view/HyperCellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget v0, Lcom/miui/powercenter/batteryhistory/y;->u:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->F(Landroid/content/Context;)Z

    move-result v0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->b:Lmiuix/appcompat/widget/Spinner;

    sget v1, Lcom/miui/powercenter/batteryhistory/y;->t:I

    invoke-direct {p0, v1}, Lcom/miui/powercenter/batteryhistory/y;->y(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/widget/Spinner;->setSelection(I)V

    sget v0, Lcom/miui/powercenter/batteryhistory/y;->t:I

    goto :goto_0

    :goto_1
    return-void
.end method

.method static synthetic d(Lcom/miui/powercenter/batteryhistory/y;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/y;->e:Ljava/util/HashMap;

    return-object p0
.end method

.method static synthetic e(Lcom/miui/powercenter/batteryhistory/y;)I
    .locals 0

    iget p0, p0, Lcom/miui/powercenter/batteryhistory/y;->f:I

    return p0
.end method

.method static synthetic f(Lcom/miui/powercenter/batteryhistory/y;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/y;->w(Z)V

    return-void
.end method

.method static synthetic g(Lcom/miui/powercenter/batteryhistory/y;I)I
    .locals 0

    iput p1, p0, Lcom/miui/powercenter/batteryhistory/y;->f:I

    return p1
.end method

.method static synthetic h(Lcom/miui/powercenter/batteryhistory/y;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/y;->p:Z

    return p1
.end method

.method static synthetic i(Lcom/miui/powercenter/batteryhistory/y;)Lmiuix/flexible/view/HyperCellLayout;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/y;->g:Lmiuix/flexible/view/HyperCellLayout;

    return-object p0
.end method

.method static synthetic j()I
    .locals 1

    sget v0, Lcom/miui/powercenter/batteryhistory/y;->u:I

    return v0
.end method

.method static synthetic k(Lcom/miui/powercenter/batteryhistory/y;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/y;->r:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static synthetic l(Lcom/miui/powercenter/batteryhistory/y;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/y;->O()V

    return-void
.end method

.method static synthetic m(Lcom/miui/powercenter/batteryhistory/y;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/y;->K(I)V

    return-void
.end method

.method static synthetic n(Lcom/miui/powercenter/batteryhistory/y;I)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/y;->y(I)I

    move-result p0

    return p0
.end method

.method static synthetic o(Lcom/miui/powercenter/batteryhistory/y;)Lmiuix/appcompat/widget/Spinner;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/y;->b:Lmiuix/appcompat/widget/Spinner;

    return-object p0
.end method

.method static synthetic p(Lcom/miui/powercenter/batteryhistory/y;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/powercenter/batteryhistory/y;->k:Z

    return p0
.end method

.method static synthetic q(Lcom/miui/powercenter/batteryhistory/y;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic r()I
    .locals 1

    sget v0, Lcom/miui/powercenter/batteryhistory/y;->s:I

    return v0
.end method

.method static synthetic s(Lcom/miui/powercenter/batteryhistory/y;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/y;->u(Z)V

    return-void
.end method

.method static synthetic t(Lcom/miui/powercenter/batteryhistory/y;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/powercenter/batteryhistory/y;->q:Z

    return p1
.end method

.method private u(Z)V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/batteryhistory/y$g;

    invoke-direct {v0, p0, p1}, Lcom/miui/powercenter/batteryhistory/y$g;-><init>(Lcom/miui/powercenter/batteryhistory/y;Z)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method private v(Z)V
    .locals 5

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {v0}, Lme/w;->Q(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lme/e0;->f()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const v1, 0x7f0e03e4

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b06fc

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {v2}, Lme/w;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const v4, 0x7f0b0882

    if-eqz v3, :cond_0

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget v1, p0, Lcom/miui/powercenter/batteryhistory/y;->f:I

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {v3}, Lme/w;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f0b0d26

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/y;->C()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f12125e

    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setView(Landroid/view/View;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a

    new-instance v3, Lcom/miui/powercenter/batteryhistory/y$j;

    invoke-direct {v3, p0, p1}, Lcom/miui/powercenter/batteryhistory/y$j;-><init>(Lcom/miui/powercenter/batteryhistory/y;Z)V

    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000

    new-instance v2, Lcom/miui/powercenter/batteryhistory/y$i;

    invoke-direct {v2, p0, v1}, Lcom/miui/powercenter/batteryhistory/y$i;-><init>(Lcom/miui/powercenter/batteryhistory/y;I)V

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/miui/powercenter/batteryhistory/y$h;

    invoke-direct {v0, p0, v1}, Lcom/miui/powercenter/batteryhistory/y$h;-><init>(Lcom/miui/powercenter/batteryhistory/y;I)V

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/powercenter/batteryhistory/y;->r:Lmiuix/appcompat/app/AlertDialog;

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/miui/powercenter/batteryhistory/y;->w(Z)V

    invoke-static {p1}, Lhd/a;->h1(Z)V

    :goto_1
    invoke-static {}, Lhd/a;->V()V

    return-void
.end method

.method private w(Z)V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/batteryhistory/y$k;

    invoke-direct {v0, p0, p1}, Lcom/miui/powercenter/batteryhistory/y$k;-><init>(Lcom/miui/powercenter/batteryhistory/y;Z)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-static {p1}, Lme/w;->j(Landroid/content/Context;)I

    move-result p1

    invoke-static {p1}, Lhd/a;->E(I)V

    return-void
.end method

.method private static x(Landroid/content/Context;I)Ljava/lang/String;
    .locals 8

    div-int/lit8 v0, p1, 0x3c

    rem-int/lit8 p1, p1, 0x3c

    invoke-static {}, Lme/w;->c0()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f1000ef

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v0, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f1000f0

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, p1, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f1212aa

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    aput-object p1, v2, v4

    invoke-static {v1, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v3

    const-string v0, "%d"

    invoke-static {v1, v0, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v6, v3

    invoke-static {v5, v0, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f1212a8

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    aput-object p1, v2, v4

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private y(I)I
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->e:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private static z(Landroid/content/Context;III)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lme/b0;->o(Landroid/content/Context;III)I

    move-result p1

    invoke-static {p0, p1}, Lcom/miui/powercenter/batteryhistory/y;->x(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public E(Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->o:Lmiuix/flexible/view/HyperCellLayout;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public G()V
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/miui/powercenter/batteryhistory/y;->J()V

    return-void
.end method

.method public H()V
    .locals 2

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->c:Lcom/miui/powercenter/batteryhistory/y$l;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->c:Lcom/miui/powercenter/batteryhistory/y$l;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public J()V
    .locals 6

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->l:Lcom/miui/powercenter/PowerSaveMainFragment;

    iget-boolean v0, v0, Lcom/miui/powercenter/PowerSaveMainFragment;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->m:Lmiuix/flexible/view/HyperCellLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->n:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const v2, 0x7f060c0d

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const v2, 0x7f121099

    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->m:Lmiuix/flexible/view/HyperCellLayout;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/View;->setEnabled(Z)V

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v0

    invoke-virtual {v0}, Lfe/l;->p()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v3

    invoke-virtual {v3}, Lfe/l;->s()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/y;->n:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const v5, 0x7f060bbc

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/y;->d:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const v5, 0x7f060bbb

    invoke-virtual {v4, v5}, Landroid/content/Context;->getColor(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    if-lez v0, :cond_1

    iget-object v3, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100093

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->d:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->d:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const v2, 0x7f121051

    goto :goto_0

    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    sparse-switch p1, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const-class v2, Lcom/miui/powercenter/savemode/PowerSaveActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_1

    :sswitch_1
    invoke-direct {p0}, Lcom/miui/powercenter/batteryhistory/y;->M()V

    goto :goto_2

    :sswitch_2
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const-class v1, Lcom/miui/powercenter/PowerSettings;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v0, 0x7f121088

    const-string v1, "extra_settings_title_res"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    :sswitch_3
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const-class v1, Lcom/miui/powercenter/charge/ChargeFeatureActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_0
    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :sswitch_4
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const-class v2, Lcom/miui/powercenter/nightcharge/ChargerProtectActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    :goto_1
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_2

    :sswitch_5
    iget-object p1, p0, Lcom/miui/powercenter/batteryhistory/y;->l:Lcom/miui/powercenter/PowerSaveMainFragment;

    iget-boolean p1, p1, Lcom/miui/powercenter/PowerSaveMainFragment;->f:Z

    if-nez p1, :cond_0

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/miui/powercenter/batteryhistory/y;->a:Landroid/content/Context;

    const-class v1, Lcom/miui/powercenter/PowerCenter;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    :cond_0
    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0b03fc -> :sswitch_5
        0x7f0b03fd -> :sswitch_4
        0x7f0b03fe -> :sswitch_3
        0x7f0b0403 -> :sswitch_2
        0x7f0b08c6 -> :sswitch_1
        0x7f0b08c7 -> :sswitch_0
    .end sparse-switch
.end method
