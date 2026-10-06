.class final Landroidx/emoji2/text/EmojiCompat$a;
.super Landroidx/emoji2/text/EmojiCompat$b;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/emoji2/text/EmojiCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# instance fields
.field private volatile b:Landroidx/emoji2/text/e;

.field private volatile c:Landroidx/emoji2/text/j;


# direct methods
.method constructor <init>(Landroidx/emoji2/text/EmojiCompat;)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/emoji2/text/EmojiCompat$b;-><init>(Landroidx/emoji2/text/EmojiCompat;)V

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    :try_start_0
    new-instance v0, Landroidx/emoji2/text/EmojiCompat$a$a;

    invoke-direct {v0, p0}, Landroidx/emoji2/text/EmojiCompat$a$a;-><init>(Landroidx/emoji2/text/EmojiCompat$a;)V

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    iget-object v1, v1, Landroidx/emoji2/text/EmojiCompat;->f:Landroidx/emoji2/text/EmojiCompat$g;

    invoke-interface {v1, v0}, Landroidx/emoji2/text/EmojiCompat$g;->a(Landroidx/emoji2/text/EmojiCompat$h;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    invoke-virtual {v1, v0}, Landroidx/emoji2/text/EmojiCompat;->m(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method b(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;
    .locals 6
    .param p1    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$a;->b:Landroidx/emoji2/text/e;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Landroidx/emoji2/text/e;->h(Ljava/lang/CharSequence;IIIZ)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method c(Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .param p1    # Landroid/view/inputmethod/EditorInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v1, p0, Landroidx/emoji2/text/EmojiCompat$a;->c:Landroidx/emoji2/text/j;

    invoke-virtual {v1}, Landroidx/emoji2/text/j;->e()I

    move-result v1

    const-string v2, "android.support.text.emoji.emojiCompat_metadataVersion"

    invoke-virtual {v0, v2, v1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    iget-object p1, p1, Landroid/view/inputmethod/EditorInfo;->extras:Landroid/os/Bundle;

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    iget-boolean v0, v0, Landroidx/emoji2/text/EmojiCompat;->g:Z

    const-string v1, "android.support.text.emoji.emojiCompat_replaceAll"

    invoke-virtual {p1, v1, v0}, Landroid/os/BaseBundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method d(Landroidx/emoji2/text/j;)V
    .locals 8
    .param p1    # Landroidx/emoji2/text/j;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "metadataRepo cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroidx/emoji2/text/EmojiCompat;->m(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$a;->c:Landroidx/emoji2/text/j;

    new-instance p1, Landroidx/emoji2/text/e;

    iget-object v3, p0, Landroidx/emoji2/text/EmojiCompat$a;->c:Landroidx/emoji2/text/j;

    new-instance v4, Landroidx/emoji2/text/EmojiCompat$i;

    invoke-direct {v4}, Landroidx/emoji2/text/EmojiCompat$i;-><init>()V

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    invoke-static {v0}, Landroidx/emoji2/text/EmojiCompat;->a(Landroidx/emoji2/text/EmojiCompat;)Landroidx/emoji2/text/EmojiCompat$d;

    move-result-object v5

    iget-object v0, p0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    iget-boolean v6, v0, Landroidx/emoji2/text/EmojiCompat;->h:Z

    iget-object v7, v0, Landroidx/emoji2/text/EmojiCompat;->i:[I

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Landroidx/emoji2/text/e;-><init>(Landroidx/emoji2/text/j;Landroidx/emoji2/text/EmojiCompat$i;Landroidx/emoji2/text/EmojiCompat$d;Z[I)V

    iput-object p1, p0, Landroidx/emoji2/text/EmojiCompat$a;->b:Landroidx/emoji2/text/e;

    iget-object p1, p0, Landroidx/emoji2/text/EmojiCompat$b;->a:Landroidx/emoji2/text/EmojiCompat;

    invoke-virtual {p1}, Landroidx/emoji2/text/EmojiCompat;->n()V

    return-void
.end method
