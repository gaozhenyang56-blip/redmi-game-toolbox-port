.class public Lw2/f$a;
.super Lw2/f$d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw2/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "a"
.end annotation


# instance fields
.field final synthetic c:Lw2/f;


# direct methods
.method public constructor <init>(Lw2/f;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    iput-object p1, p0, Lw2/f$a;->c:Lw2/f;

    invoke-direct {p0, p1, p2}, Lw2/f$d;-><init>(Lw2/f;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    iget-object v0, p0, Lw2/f$d;->a:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method
