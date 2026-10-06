.class Landroidx/emoji2/text/EmojiCompat$a$a;
.super Landroidx/emoji2/text/EmojiCompat$h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/emoji2/text/EmojiCompat$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/emoji2/text/EmojiCompat$a;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/EmojiCompat$a;)V
    .locals 0

    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$a$a;->a:Landroidx/emoji2/text/EmojiCompat$a;

    invoke-direct {p0}, Landroidx/emoji2/text/EmojiCompat$h;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)V
    .locals 1
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$a$a;->a:Landroidx/emoji2/text/EmojiCompat$a;

    iget-object v0, v0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat;->m(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Landroidx/emoji2/text/j;)V
    .locals 1
    .param p1    # Landroidx/emoji2/text/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$a$a;->a:Landroidx/emoji2/text/EmojiCompat$a;

    invoke-virtual {v0, p1}, Landroidx/emoji2/text/EmojiCompat$a;->d(Landroidx/emoji2/text/j;)V

    return-void
.end method
