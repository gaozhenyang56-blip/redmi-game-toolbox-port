.class public Llc/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llc/a;->a:I

    iput-object p2, p0, Llc/a;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Llc/a;->c:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    iget v0, p0, Llc/a;->c:I

    add-int/2addr v0, p1

    iput v0, p0, Llc/a;->c:I

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Llc/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Llc/a;

    iget v0, p0, Llc/a;->a:I

    iget v2, p1, Llc/a;->a:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Llc/a;->b:Ljava/lang/String;

    iget-object p1, p1, Llc/a;->b:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Llc/a;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Llc/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
