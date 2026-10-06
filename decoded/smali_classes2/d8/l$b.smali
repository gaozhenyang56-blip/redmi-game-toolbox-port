.class public Ld8/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ld8/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public a:Ld8/l$a;

.field public b:Ld8/l$a;

.field public c:Ld8/l$a;

.field public d:Ld8/l$a;

.field public e:Ld8/l$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ld8/l$a;

    invoke-direct {v0}, Ld8/l$a;-><init>()V

    iput-object v0, p0, Ld8/l$b;->a:Ld8/l$a;

    new-instance v0, Ld8/l$a;

    invoke-direct {v0}, Ld8/l$a;-><init>()V

    iput-object v0, p0, Ld8/l$b;->b:Ld8/l$a;

    new-instance v0, Ld8/l$a;

    invoke-direct {v0}, Ld8/l$a;-><init>()V

    iput-object v0, p0, Ld8/l$b;->c:Ld8/l$a;

    new-instance v0, Ld8/l$a;

    invoke-direct {v0}, Ld8/l$a;-><init>()V

    iput-object v0, p0, Ld8/l$b;->d:Ld8/l$a;

    new-instance v0, Ld8/l$a;

    invoke-direct {v0}, Ld8/l$a;-><init>()V

    iput-object v0, p0, Ld8/l$b;->e:Ld8/l$a;

    return-void
.end method
