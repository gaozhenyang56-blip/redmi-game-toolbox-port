.class public final synthetic Lud/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lud/e$c;


# instance fields
.field public final synthetic a:Lud/c;

.field public final synthetic b:Z

.field public final synthetic c:I

.field public final synthetic d:I

.field public final synthetic e:[I


# direct methods
.method public synthetic constructor <init>(Lud/c;ZII[I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud/b;->a:Lud/c;

    iput-boolean p2, p0, Lud/b;->b:Z

    iput p3, p0, Lud/b;->c:I

    iput p4, p0, Lud/b;->d:I

    iput-object p5, p0, Lud/b;->e:[I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Lud/b;->a:Lud/c;

    iget-boolean v1, p0, Lud/b;->b:Z

    iget v2, p0, Lud/b;->c:I

    iget v3, p0, Lud/b;->d:I

    iget-object v4, p0, Lud/b;->e:[I

    invoke-static {v0, v1, v2, v3, v4}, Lud/c;->q(Lud/c;ZII[I)V

    return-void
.end method
