.class La7/o$c;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = La7/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:La7/o;


# direct methods
.method public constructor <init>(La7/o;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, La7/o$c;->a:La7/o;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object p1, p0, La7/o$c;->a:La7/o;

    invoke-static {p1}, La7/o;->b(La7/o;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "quick_reply"

    const/4 v1, 0x0

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, La8/c0;->h(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, La7/o$c;->a:La7/o;

    invoke-static {p1}, La7/o;->c(La7/o;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lx4/t;->h()I

    move-result p1

    const/16 v0, 0xd

    if-ge p1, v0, :cond_1

    iget-object p1, p0, La7/o$c;->a:La7/o;

    invoke-static {p1}, La7/o;->c(La7/o;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
