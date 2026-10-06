.class public Lm2/h;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm2/h$a;
    }
.end annotation


# instance fields
.field private a:Landroid/database/Cursor;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm2/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/lang/String;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/lang/String;",
            "Ljava/util/Comparator<",
            "Lm2/h$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lm2/h;->b:Ljava/util/List;

    const/4 v0, 0x0

    iput v0, p0, Lm2/h;->c:I

    iput-object p1, p0, Lm2/h;->a:Landroid/database/Cursor;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_1

    iget-object v1, p0, Lm2/h;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_0
    iget-object v1, p0, Lm2/h;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lm2/h$a;

    invoke-direct {v1, p0}, Lm2/h$a;-><init>(Lm2/h;)V

    iget-object v2, p0, Lm2/h;->a:Landroid/database/Cursor;

    invoke-interface {v2, p2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lm2/h$a;->a:Ljava/lang/String;

    iput v0, v1, Lm2/h$a;->b:I

    iget-object v2, p0, Lm2/h;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lm2/h;->a:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lm2/h;->b:Ljava/util/List;

    invoke-static {p1, p3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public getPosition()I
    .locals 1

    iget v0, p0, Lm2/h;->c:I

    return v0
.end method

.method public move(I)Z
    .locals 1

    iget v0, p0, Lm2/h;->c:I

    add-int/2addr v0, p1

    invoke-virtual {p0, v0}, Lm2/h;->moveToPosition(I)Z

    move-result p1

    return p1
.end method

.method public moveToFirst()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lm2/h;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToLast()Z
    .locals 1

    invoke-virtual {p0}, Landroid/database/CursorWrapper;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lm2/h;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToNext()Z
    .locals 1

    iget v0, p0, Lm2/h;->c:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lm2/h;->moveToPosition(I)Z

    move-result v0

    return v0
.end method

.method public moveToPosition(I)Z
    .locals 1

    if-ltz p1, :cond_1

    iget-object v0, p0, Lm2/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    iput p1, p0, Lm2/h;->c:I

    iget-object v0, p0, Lm2/h;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lm2/h$a;

    iget p1, p1, Lm2/h$a;->b:I

    :cond_0
    :goto_0
    iget-object v0, p0, Lm2/h;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result p1

    return p1

    :cond_1
    if-gez p1, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lm2/h;->c:I

    :cond_2
    iget-object v0, p0, Lm2/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    iget-object v0, p0, Lm2/h;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lm2/h;->c:I

    goto :goto_0
.end method

.method public moveToPrevious()Z
    .locals 1

    iget v0, p0, Lm2/h;->c:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lm2/h;->moveToPosition(I)Z

    move-result v0

    return v0
.end method
