.class Lkd/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkd/a;->l(Landroid/content/Context;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lkd/a;


# direct methods
.method constructor <init>(Lkd/a;)V
    .locals 0

    iput-object p1, p0, Lkd/a$c;->a:Lkd/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lkd/a$c;->a:Lkd/a;

    invoke-static {p1}, Lkd/a;->a(Lkd/a;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lde/j;->l0(Landroid/content/Context;)V

    return-void
.end method
