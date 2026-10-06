.class Lcom/miui/gamebooster/ui/SelectGameActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/ui/SelectGameActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/SelectGameActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/SelectGameActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(ZLcom/miui/gamebooster/model/d;)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object p1, Lcom/miui/gamebooster/model/r;->a:Lcom/miui/gamebooster/model/r;

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/miui/gamebooster/model/r;->b:Lcom/miui/gamebooster/model/r;

    :goto_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/SelectGameActivity;->n0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/q;->c()Lcom/miui/gamebooster/model/r;

    move-result-object v2

    if-ne p1, v2, :cond_2

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/q;->a()Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-virtual {v1}, Lcom/miui/gamebooster/model/q;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v3, v1, p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->p0(Lcom/miui/gamebooster/ui/SelectGameActivity;Ljava/util/List;Lcom/miui/gamebooster/model/r;)I

    move-result v1

    invoke-virtual {v2, v1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/miui/gamebooster/model/q;->a()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_2
    if-ltz v2, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/miui/gamebooster/model/d;

    if-eqz v3, :cond_3

    invoke-virtual {v3, p2}, Lcom/miui/gamebooster/model/d;->f(Lcom/miui/gamebooster/model/d;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 7

    move-object v6, p1

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/gamebooster/model/d;

    if-eqz p1, :port_done
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;
    move-result-object v0
    iget-object v1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;
    invoke-static {v1, v0, p2}, Lcom/gzy/redmiport/GameStore;->save(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;Z)Z
    move-result v0
    if-nez v0, :port_saved
    const/4 v0, 0x0
    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->e()Z
    move-result v0
    invoke-virtual {v6, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V
    invoke-virtual {v6, p0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    :port_done
    return-void
    :port_saved
    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/model/d;->g(Z)V

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/d;->a()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1, p2}, Lb7/b;->h(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_0
    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {v0, v0, p2, p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->m0(Lcom/miui/gamebooster/ui/SelectGameActivity;Lcom/miui/gamebooster/ui/SelectGameActivity;ZLcom/miui/gamebooster/model/d;)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/SelectGameActivity;->n0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/gamebooster/model/q;

    invoke-virtual {v4}, Lcom/miui/gamebooster/model/q;->a()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/gamebooster/model/d;

    invoke-virtual {v5}, Lcom/miui/gamebooster/model/d;->d()Z

    move-result v5

    if-eqz v5, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p2, p1}, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a(ZLcom/miui/gamebooster/model/d;)V

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->n0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/miui/gamebooster/model/q;

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/q;->c()Lcom/miui/gamebooster/model/r;

    move-result-object v0

    sget-object v4, Lcom/miui/gamebooster/model/r;->a:Lcom/miui/gamebooster/model/r;

    const/4 v5, 0x1

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f100067

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f100142

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-virtual {v0, v4, v3, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {p2, v0}, Lcom/miui/gamebooster/model/q;->f(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-virtual {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->isSearchMode()Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->n0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/miui/gamebooster/ui/SelectGameActivity;->A0(Ljava/util/List;)V

    :cond_6
    iget-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameActivity$c;->a:Lcom/miui/gamebooster/ui/SelectGameActivity;

    invoke-static {p1}, Lcom/miui/gamebooster/ui/SelectGameActivity;->n0(Lcom/miui/gamebooster/ui/SelectGameActivity;)Ljava/util/ArrayList;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/miui/gamebooster/ui/SelectGameActivity;->o0(Lcom/miui/gamebooster/ui/SelectGameActivity;Ljava/util/List;)V

    return-void
.end method
