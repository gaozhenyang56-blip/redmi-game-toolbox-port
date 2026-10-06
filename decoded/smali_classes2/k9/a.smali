.class public Lk9/a;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:I

.field private final e:Ljava/lang/String;

.field private final f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private final i:[Ljava/lang/String;

.field private final j:[Ljava/lang/String;

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/globalsatisfaction/bean/Questionnaire;Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const-string v0, "300"

    iput-object v0, p0, Lk9/a;->e:Ljava/lang/String;

    const-string v1, "blue"

    iput-object v1, p0, Lk9/a;->f:Ljava/lang/String;

    const-string v2, "id"

    const-string v3, "text"

    const-string v4, "priority"

    const-string v5, "style"

    const-string v6, "action"

    const-string v7, "extras"

    filled-new-array/range {v2 .. v7}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lk9/a;->i:[Ljava/lang/String;

    const-string v3, "id"

    const-string v4, "text"

    const-string v5, "priority"

    const-string v6, "style"

    const-string v7, "action"

    const-string v8, "extras"

    const-string v9, "summary"

    const-string v10, "icon"

    filled-new-array/range {v3 .. v10}, [Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lk9/a;->j:[Ljava/lang/String;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lk9/a;->k:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getSettingsId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lk9/a;->a:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {}, Lcom/miui/common/a;->d()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f120b5f

    goto :goto_0

    :cond_0
    const v3, 0x7f120b5d

    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lk9/a;->b:Ljava/lang/String;

    const-string v2, "miui.intent.action.globalsatisfaction"

    iput-object v2, p0, Lk9/a;->g:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "url="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "user_behavior"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ll9/b;->e(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk9/a;->h:Ljava/lang/String;

    iget-object p1, p0, Lk9/a;->k:Ljava/util/List;

    iget-object v2, p0, Lk9/a;->a:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lk9/a;->k:Ljava/util/List;

    iget-object v2, p0, Lk9/a;->b:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lk9/a;->k:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lk9/a;->k:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lk9/a;->k:Ljava/util/List;

    iget-object v0, p0, Lk9/a;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lk9/a;->k:Ljava/util/List;

    iget-object v0, p0, Lk9/a;->h:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/miui/common/a;->d()Z

    move-result p1

    if-eqz p1, :cond_1

    const p1, 0x7f080781

    iput p1, p0, Lk9/a;->d:I

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120b5e

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lk9/a;->c:Ljava/lang/String;

    iget-object p2, p0, Lk9/a;->k:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lk9/a;->k:Ljava/util/List;

    iget p2, p0, Lk9/a;->d:I

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/miui/common/a;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lk9/a;->j:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lk9/a;->i:[Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lk9/a;->k:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getDouble(I)D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lk9/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lk9/a;->k:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public isNull(I)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
