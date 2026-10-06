.class public final synthetic Lud/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lud/i;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lud/i;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lud/h;->a:Lud/i;

    iput p2, p0, Lud/h;->b:I

    iput p3, p0, Lud/h;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lud/h;->a:Lud/i;

    iget v1, p0, Lud/h;->b:I

    iget v2, p0, Lud/h;->c:I

    invoke-static {v0, v1, v2}, Lud/i;->c(Lud/i;II)V

    return-void
.end method
