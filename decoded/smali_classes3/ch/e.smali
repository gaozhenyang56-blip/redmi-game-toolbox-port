.class public final synthetic Lch/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lch/a$d;

.field public final synthetic b:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lch/a$d;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lch/e;->a:Lch/a$d;

    iput-object p2, p0, Lch/e;->b:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lch/e;->a:Lch/a$d;

    iget-object v1, p0, Lch/e;->b:Landroid/widget/CheckBox;

    invoke-static {v0, v1}, Lch/a$d;->f(Lch/a$d;Landroid/widget/CheckBox;)V

    return-void
.end method
