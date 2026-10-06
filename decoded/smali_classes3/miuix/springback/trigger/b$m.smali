.class Lmiuix/springback/trigger/b$m;
.super Lmiuix/springback/trigger/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "m"
.end annotation


# instance fields
.field final synthetic a:Lmiuix/springback/trigger/b;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/b;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/b$m;->a:Lmiuix/springback/trigger/b;

    invoke-direct {p0}, Lmiuix/springback/trigger/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/b$m;-><init>(Lmiuix/springback/trigger/b;)V

    return-void
.end method


# virtual methods
.method a(II)V
    .locals 1

    if-nez p2, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/b$m;->a:Lmiuix/springback/trigger/b;

    iget-object p2, p1, Lmiuix/springback/trigger/b;->Q:Lmiuix/springback/trigger/b$g;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    iget-object p1, p0, Lmiuix/springback/trigger/b$m;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/b$m;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/a$b;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/b$m;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Lmiuix/springback/trigger/a$a;->notifyTriggered()V

    iget-object p1, p0, Lmiuix/springback/trigger/b$m;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object p2

    iget-object v0, p0, Lmiuix/springback/trigger/b$m;->a:Lmiuix/springback/trigger/b;

    iget v0, v0, Lmiuix/springback/trigger/b;->A:I

    invoke-static {p1, p2, v0}, Lmiuix/springback/trigger/b;->s(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/a$a;I)V

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lmiuix/springback/trigger/b$m;->a:Lmiuix/springback/trigger/b;

    invoke-virtual {p1}, Lmiuix/springback/trigger/a;->h()Lmiuix/springback/trigger/a$c;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/b$m;->a:Lmiuix/springback/trigger/b;

    invoke-static {p1}, Lmiuix/springback/trigger/b;->K(Lmiuix/springback/trigger/b;)Lmiuix/springback/trigger/a$a;

    move-result-object p1

    instance-of p1, p1, Lmiuix/springback/trigger/a$c;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lmiuix/springback/trigger/b$m;->a:Lmiuix/springback/trigger/b;

    invoke-virtual {p1}, Lmiuix/springback/trigger/a;->h()Lmiuix/springback/trigger/a$c;

    move-result-object p1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
