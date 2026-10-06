.class public final synthetic Lpd/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj4/b$a;


# instance fields
.field public final synthetic a:Lpd/c;

.field public final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Lpd/c;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpd/b;->a:Lpd/c;

    iput p2, p0, Lpd/b;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    iget-object v0, p0, Lpd/b;->a:Lpd/c;

    iget v1, p0, Lpd/b;->b:I

    invoke-static {v0, v1, p1}, Lpd/c;->a(Lpd/c;II)V

    return-void
.end method
