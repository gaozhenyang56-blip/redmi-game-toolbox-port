.class public final synthetic Lud/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lud/e;

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:[I

.field public final synthetic f:Lud/e$c;


# direct methods
.method public synthetic constructor <init>(Lud/e;ZII[ILud/e$c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud/d;->a:Lud/e;

    iput-boolean p2, p0, Lud/d;->b:Z

    iput p3, p0, Lud/d;->c:I

    iput p4, p0, Lud/d;->d:I

    iput-object p5, p0, Lud/d;->e:[I

    iput-object p6, p0, Lud/d;->f:Lud/e$c;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lud/d;->a:Lud/e;

    iget-boolean v1, p0, Lud/d;->b:Z

    iget v2, p0, Lud/d;->c:I

    iget v3, p0, Lud/d;->d:I

    iget-object v4, p0, Lud/d;->e:[I

    iget-object v5, p0, Lud/d;->f:Lud/e$c;

    invoke-static/range {v0 .. v5}, Lud/e;->a(Lud/e;ZII[ILud/e$c;)V

    return-void
.end method
