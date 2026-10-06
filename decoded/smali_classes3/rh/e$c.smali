.class Lrh/e$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lwh/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrh/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Lwh/c;


# direct methods
.method public constructor <init>(Lwh/c;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lrh/e$c;->a:Lwh/c;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;
    .locals 2

    sget-object v0, Lrh/e$a;->a:[I

    invoke-static {p1}, Lwh/c$a;->c(Ljava/lang/String;)Lwh/c$a;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lrh/e$c;->a:Lwh/c;

    invoke-interface {v0, p1, p2}, Lwh/c;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/io/InputStream;

    move-result-object p1

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method
