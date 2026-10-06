.class public Lcom/miui/antivirus/ui/MonitorSafeResultView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/content/Context;

.field private c:Landroid/content/res/Configuration;

.field private d:Landroid/view/View;

.field private e:Landroid/view/View;

.field private f:[Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x7

    new-array p2, p2, [Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 15

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->b:Landroid/content/Context;

    invoke-static {v0}, Lo2/g;->J(Landroid/content/Context;)Lo2/g;

    move-result-object v0

    invoke-virtual {v0}, Lo2/g;->M()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    const/4 v5, 0x1

    aget-object v2, v2, v5

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    const/4 v6, 0x2

    aget-object v2, v2, v6

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    const/4 v7, 0x3

    aget-object v2, v2, v7

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    invoke-direct {v2, v8}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    invoke-static {}, Lx4/t;->p()Z

    move-result v8

    const v9, 0x7f120e29

    const v10, 0x7f120e28

    const/4 v11, 0x5

    const v12, 0x7f080fb8

    const/4 v13, 0x6

    const-string v14, "pkg_icon://"

    if-eqz v8, :cond_4

    invoke-static {v2}, Lx4/a0;->z(Landroid/content/res/Configuration;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v11

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v13

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->d:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->e:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    goto/16 :goto_4

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v13, :cond_2

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    sget-object v10, Lx4/o0;->f:Lrh/c;

    invoke-static {v2, v8, v10}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v5, v8, v5

    invoke-static {v2, v5, v10}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v5, v5, v6

    invoke-static {v2, v5, v10}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v5, v5, v7

    invoke-static {v2, v5, v10}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v4, v5, v4

    invoke-static {v2, v4, v10}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v11

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v4, v4, v11

    invoke-static {v2, v4, v10}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v13

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v13

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v13

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v13

    iget-object v4, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->b:Landroid/content/Context;

    invoke-virtual {v4, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move v2, v3

    :goto_0
    if-ge v2, v13, :cond_8

    :try_start_0
    iget-object v4, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    sget-object v6, Lx4/o0;->f:Lrh/c;

    invoke-static {v4, v5, v6}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :try_start_1
    iget-object v4, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_3

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v11

    const/16 v8, 0x8

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v13

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->d:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->e:Landroid/view/View;

    invoke-virtual {v2, v8}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    :goto_4
    iget-object v1, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->b:Landroid/content/Context;

    invoke-virtual {v1, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/16 :goto_9

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v4, :cond_6

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v8, v8, v3

    sget-object v10, Lx4/o0;->f:Lrh/c;

    invoke-static {v2, v8, v10}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v8, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v5, v8, v5

    invoke-static {v2, v5, v10}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v5, v5, v6

    invoke-static {v2, v5, v10}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v7

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v5, v5, v7

    invoke-static {v2, v5, v10}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v2, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    iget-object v5, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->b:Landroid/content/Context;

    invoke-virtual {v5, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    move v2, v3

    :goto_5
    if-ge v2, v4, :cond_8

    :try_start_2
    iget-object v5, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_6

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_6
    move v2, v3

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    iget-object v4, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v5, v5, v2

    sget-object v6, Lx4/o0;->f:Lrh/c;

    invoke-static {v4, v5, v6}, Lx4/o0;->d(Ljava/lang/String;Landroid/widget/ImageView;Lrh/c;)V

    :try_start_3
    iget-object v4, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v4, v4, v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_8

    :catch_3
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_7
    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    goto/16 :goto_4

    :cond_8
    :goto_9
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MonitorSafeResultView;->a()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    new-instance p1, Landroid/content/Intent;

    const-string v0, "miui.intent.action.SAFE_PAY_MONITOR_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->b:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Lq2/b$b;->h()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->c:Landroid/content/res/Configuration;

    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result p1

    and-int/lit16 p1, p1, 0x400

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/miui/antivirus/ui/MonitorSafeResultView;->a()V

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->c:Landroid/content/res/Configuration;

    const v0, 0x7f0b01bb

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->a:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    const v1, 0x7f0b0507

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    const v1, 0x7f0b050b

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    const v1, 0x7f0b050d

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    const v1, 0x7f0b050f

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    const v1, 0x7f0b0511

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    const v1, 0x7f0b0513

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iget-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->f:[Landroid/widget/ImageView;

    const v1, 0x7f0b0515

    invoke-virtual {p0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    const v0, 0x7f0b0179

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->d:Landroid/view/View;

    const v0, 0x7f0b017a

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/ui/MonitorSafeResultView;->e:Landroid/view/View;

    return-void
.end method
