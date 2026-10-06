.class public final synthetic Lre/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lak/l;

.field public final synthetic b:Lre/a$b;


# direct methods
.method public synthetic constructor <init>(Lak/l;Lre/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lre/b;->a:Lak/l;

    iput-object p2, p0, Lre/b;->b:Lre/a$b;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lre/b;->a:Lak/l;

    iget-object v1, p0, Lre/b;->b:Lre/a$b;

    invoke-static {v0, v1, p1}, Lre/a$b;->a(Lak/l;Lre/a$b;Landroid/view/View;)V

    return-void
.end method
