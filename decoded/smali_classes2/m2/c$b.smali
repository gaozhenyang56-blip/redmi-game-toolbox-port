.class Lm2/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm2/c;->e(Landroid/content/ContentResolver;Ll2/b;Landroid/util/SparseBooleanArray;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/util/SparseBooleanArray;

.field final synthetic b:Ll2/b;

.field final synthetic c:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Landroid/util/SparseBooleanArray;Ll2/b;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lm2/c$b;->a:Landroid/util/SparseBooleanArray;

    iput-object p2, p0, Lm2/c$b;->b:Ll2/b;

    iput-object p3, p0, Lm2/c$b;->c:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lm2/c$b;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2}, Landroid/util/SparseBooleanArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lm2/c$b;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lm2/c$b;->b:Ll2/b;

    iget-object v3, p0, Lm2/c$b;->a:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ll2/b;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ll2/e$c;

    iget-object v3, v2, Ll2/e$c;->b:Ljava/lang/String;

    if-nez v3, :cond_0

    iget-object v3, v2, Ll2/e$c;->a:Ljava/lang/String;

    :cond_0
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lm2/c$b;->c:Landroid/content/ContentResolver;

    invoke-static {v1, v0}, Lm2/c;->b(Landroid/content/ContentResolver;Ljava/util/ArrayList;)V

    return-void
.end method
