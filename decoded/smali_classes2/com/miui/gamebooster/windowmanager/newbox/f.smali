.class public Lcom/miui/gamebooster/windowmanager/newbox/f;
.super Lt8/a;
.source "SourceFile"

# interfaces
.implements Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;


# instance fields
.field public d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lt8/a;-><init>(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0e01a4

    invoke-virtual {p1, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    iput p3, p0, Lt8/a;->b:I

    iput-object p2, p0, Lt8/a;->a:Ljava/lang/String;

    invoke-direct {p0}, Lcom/miui/gamebooster/windowmanager/newbox/f;->g()V

    return-void
.end method

.method private g()V
    .locals 3

    const v0, 0x7f0b05b7

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    iput-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/f;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-static {}, Lv6/a;->a()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/f;->e:Z

    iget-object v1, p0, Lcom/miui/gamebooster/windowmanager/newbox/f;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2, v2}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->e(ZZZ)V

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/f;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    invoke-virtual {v0, p0}, Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;->setOnCheckedChangeListener(Lcom/miui/gamebooster/widget/CheckBoxSettingItemView$a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initView Exception\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GameAudioEffectView"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public getTitle()I
    .locals 1

    const v0, 0x7f120943

    return v0
.end method

.method public onCheckedChanged(Landroid/view/View;Z)V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/windowmanager/newbox/f;->d:Lcom/miui/gamebooster/widget/CheckBoxSettingItemView;

    if-ne p1, v0, :cond_0

    invoke-static {p2}, Lv6/a;->c(Z)V

    :cond_0
    return-void
.end method
