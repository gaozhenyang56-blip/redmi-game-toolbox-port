.class Lym/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lym/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lym/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lym/b0;Lym/z;)Lym/x;
    .locals 0
    .param p1    # Lym/b0;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    const/4 p1, 0x0

    return-object p1
.end method
