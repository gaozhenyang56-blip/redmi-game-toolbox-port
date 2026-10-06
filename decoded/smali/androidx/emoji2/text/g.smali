.class public Landroidx/emoji2/text/g;
.super Landroidx/emoji2/text/EmojiCompat$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/emoji2/text/g$a;,
        Landroidx/emoji2/text/g$b;
    }
.end annotation


# static fields
.field private static final j:Landroidx/emoji2/text/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/emoji2/text/g$a;

    invoke-direct {v0}, Landroidx/emoji2/text/g$a;-><init>()V

    sput-object v0, Landroidx/emoji2/text/g;->j:Landroidx/emoji2/text/g$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/core/provider/f;)V
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/core/provider/f;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroidx/emoji2/text/g$b;

    sget-object v1, Landroidx/emoji2/text/g;->j:Landroidx/emoji2/text/g$a;

    invoke-direct {v0, p1, p2, v1}, Landroidx/emoji2/text/g$b;-><init>(Landroid/content/Context;Landroidx/core/provider/f;Landroidx/emoji2/text/g$a;)V

    invoke-direct {p0, v0}, Landroidx/emoji2/text/EmojiCompat$c;-><init>(Landroidx/emoji2/text/EmojiCompat$g;)V

    return-void
.end method


# virtual methods
.method public c(Ljava/util/concurrent/Executor;)Landroidx/emoji2/text/g;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/emoji2/text/EmojiCompat$c;->a()Landroidx/emoji2/text/EmojiCompat$g;

    move-result-object v0

    check-cast v0, Landroidx/emoji2/text/g$b;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/g$b;->f(Ljava/util/concurrent/Executor;)V

    return-object p0
.end method
