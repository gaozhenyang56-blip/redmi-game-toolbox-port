.class Lmiuix/springback/trigger/b$f;
.super Lmiuix/springback/trigger/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/springback/trigger/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lmiuix/springback/trigger/b;


# direct methods
.method private constructor <init>(Lmiuix/springback/trigger/b;)V
    .locals 0

    iput-object p1, p0, Lmiuix/springback/trigger/b$f;->a:Lmiuix/springback/trigger/b;

    invoke-direct {p0}, Lmiuix/springback/trigger/d;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/springback/trigger/b;Lmiuix/springback/trigger/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lmiuix/springback/trigger/b$f;-><init>(Lmiuix/springback/trigger/b;)V

    return-void
.end method


# virtual methods
.method a(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Lmiuix/springback/trigger/d;->a(II)V

    if-nez p2, :cond_0

    iget-object p1, p0, Lmiuix/springback/trigger/b$f;->a:Lmiuix/springback/trigger/b;

    iget-object p2, p1, Lmiuix/springback/trigger/b;->O:Lmiuix/springback/trigger/b$i;

    invoke-virtual {p1, p2}, Lmiuix/springback/trigger/b;->T0(Lmiuix/springback/trigger/d;)V

    :cond_0
    return-void
.end method
