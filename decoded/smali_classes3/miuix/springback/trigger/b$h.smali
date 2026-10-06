.class Lmiuix/springback/trigger/b$h;
.super Lmiuix/springback/trigger/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lmiuix/springback/trigger/b;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/b;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/b$h;->a:Lmiuix/springback/trigger/b;

    invoke-direct {p0}, Lmiuix/springback/trigger/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/b$h;-><init>(Lmiuix/springback/trigger/b;)V

    return-void
.end method


# virtual methods
.method a(II)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/b$h;->a:Lmiuix/springback/trigger/b;

    iget-object p2, p1, Lmiuix/springback/trigger/b;->O:Lmiuix/springback/trigger/b$i;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    :cond_0
    return-void
.end method

.method b(II)V
    .locals 0

    iget-object p1, p0, Lmiuix/springback/trigger/b$h;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/b$h;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/a$d;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/b$h;->a:Lmiuix/springback/trigger/b;

    iget p2, p1, Lmiuix/springback/trigger/b;->A:I

    invoke-static {p1}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object p1

    iget p1, p1, Lmiuix/springback/trigger/a$a;->mEnterPoint:I

    if-ge p2, p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/b$h;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->w(Lmiuix/springback/trigger/b;)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/b$h;->a:Lmiuix/springback/trigger/b;

    const/4 p2, -0x1

    invoke-static {p1, p2}, Lmiuix/springback/trigger/b;->C(Lmiuix/springback/trigger/b;I)I

    iget-object p1, p0, Lmiuix/springback/trigger/b$h;->a:Lmiuix/springback/trigger/b;

    iget-object p2, p1, Lmiuix/springback/trigger/b;->P:Lmiuix/springback/trigger/b$l;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    :cond_0
    return-void
.end method
