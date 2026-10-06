.class Lxa/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lxa/b$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxa/b;->h(Ljava/lang/String;Ljava/util/Set;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lxa/b;


# direct methods
.method constructor <init>(Lxa/b;Ljava/util/Set;)V
    .locals 0

    iput-object p1, p0, Lxa/b$a;->b:Lxa/b;

    iput-object p2, p0, Lxa/b$a;->a:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lxa/b$a;->a:Ljava/util/Set;

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public b(Ljava/io/File;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
