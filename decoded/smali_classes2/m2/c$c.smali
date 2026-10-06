.class Lm2/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm2/c;->c(Landroid/content/ContentResolver;Ll2/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ll2/g;

.field final synthetic b:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Ll2/g;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lm2/c$c;->a:Ll2/g;

    iput-object p2, p0, Lm2/c$c;->b:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lm2/c$c;->a:Ll2/g;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$h;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    iget-object v3, p0, Lm2/c$c;->a:Ll2/g;

    invoke-virtual {v3, v2}, Ll2/g;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ll2/e$c;

    iget-object v4, v3, Ll2/e$c;->b:Ljava/lang/String;

    if-nez v4, :cond_0

    iget-object v4, v3, Ll2/e$c;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lm2/c$c;->b:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Lm2/c;->b(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    return-void
.end method
