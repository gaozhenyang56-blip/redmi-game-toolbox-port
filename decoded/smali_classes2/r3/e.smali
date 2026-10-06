.class public final synthetic Lr3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lr3/f;

.field public final synthetic b:Lr3/f$b;


# direct methods
.method public synthetic constructor <init>(Lr3/f;Lr3/f$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lr3/e;->a:Lr3/f;

    iput-object p2, p0, Lr3/e;->b:Lr3/f$b;

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    iget-object v0, p0, Lr3/e;->a:Lr3/f;

    iget-object v1, p0, Lr3/e;->b:Lr3/f$b;

    invoke-static {v0, v1, p1, p2}, Lr3/f;->k(Lr3/f;Lr3/f$b;Landroid/widget/CompoundButton;Z)V

    return-void
.end method
